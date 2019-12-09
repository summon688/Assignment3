class ApplicationController < ActionController::Base
    include CurrentCart
    before_action :set_cart
    
    def set_cart
        @cart = Cart.find(session[:car_id])
    rescue ActiveRecord::RecordNotFound
      @cart = Cart.create
      session[:car_id] = @cart.id
      @cart
    end
end
