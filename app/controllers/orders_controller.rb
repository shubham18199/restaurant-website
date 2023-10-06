class OrdersController < ApplicationController

    def index
        @orders = current_user.orders.includes(:cart_items)
    end    
end
