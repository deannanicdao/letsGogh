class AdminController < ApplicationController
    before_action :authenticate_user!
    before_action :set_item, only: [:show, :edit, :update, :destroy]
    before_action :check_roles, except: [:index, :show, :destroy]

    def users_listings
        @items = Item.all
    end

    private
    # Use callbacks to share common setup or constraints between actions.
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
