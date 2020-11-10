class UserController < ApplicationController
  def items
      @items = current_user.items
  end
end
