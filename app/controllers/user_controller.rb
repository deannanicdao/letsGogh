class UserController < ApplicationController

  # User must be signed in to view their own items
  before_action :authenticate_user!

  # Controller action to view a user's own listings
  def items
      @items = current_user.items.paginate(:page => params[:page])
  end

end
