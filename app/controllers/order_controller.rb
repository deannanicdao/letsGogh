class OrderController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:buy]
    before_action :authenticate_user!, except: [:buy]
    before_action :set_item, only: [:buy]
    before_action :check_roles, except: [:buy]
    include Rails.application.routes.url_helpers
    
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
        flash[:alert] = "Thank you for your purchase! Check your orders page for your new link."
        redirect_to item_path
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

    # Only allow a list of trusted parameters through.
    def item_params
    params.require(:item).permit(:title, :description, :price, :category, :availability, :user_id, :image)
    end
end
