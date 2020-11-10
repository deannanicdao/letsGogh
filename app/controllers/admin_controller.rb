class AdminController < ApplicationController
    def users_listings
        @items = Item.all
    end

    
end
