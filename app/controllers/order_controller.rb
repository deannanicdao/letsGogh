class OrderController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:buy]
    before_action :authenticate_user!, except: [:buy]
    before_action :set_item, only: [:buy, :success, :cancel]
    before_action :check_roles, except: [:buy]

    # To include the download link for the full resolution image we need to include url_helpers
    include Rails.application.routes.url_helpers

    def index
        @orders = current_user.orders.paginate(:page => params[:page])
        @items = @orders.map { |order| order.item }
    end
    
    def buy
        Stripe.api_key = ENV['STRIPE_API_KEY']
        session = Stripe::Checkout::Session.create({
            payment_method_types: ['card'],
            mode: 'payment',
            success_url: success_url(params[:id]),
            cancel_url: cancel_url(params[:id]),
            line_items: [
            {
                price_data: {
                currency: 'aud',
                product_data: {
                    name: @item.title
                },
                unit_amount: (@item.price.to_f * 10).to_i
                },
                quantity: 1
            }
            ]
        })

        render json: session
    end

    def success
        # create a new instance of an order here (with buyer/seller)
        @order = Order.create!(buyer_username: current_user.username, seller_username: @item.user.username, total: @item.price, item_id: @item.id, user_id: current_user.id)
        # @item.save
        flash[:alert] = "Thank you for your purchase! You now have access to the full resolution image."
        redirect_to orders_path
        # redirect_to item_path(@order) - add this for the download link to full resolution image
    end

    def cancel
        flash[:alert] = "The transaction was cancelled!"
        redirect_to item_path
    end

    private
    def set_item
        @item = Item.find(params[:id])
    end

    def check_roles
    return if user_signed_in? && current_user.has_role?(:admin)
    return if user_signed_in? && current_user.has_role?(:user)
    return if user_signed_in? && @item && @item.user == current_user 
    flash[:alert] = "You are not authorized to access that page."
    redirect_to root_path
    end

end
