class UserController < ApplicationController
  before_action :authenticate_user!
  def items
      @items = current_user.items
  end

 
end
