class PagesController < ApplicationController
  def home
  end

  def not_found
    redirect_to root_path
  end
end
