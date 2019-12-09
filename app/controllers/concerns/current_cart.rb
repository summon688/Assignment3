module CurrentCart  
  extend ActiveSupport::Concern 
  def set_cart
     Cart.find(session[:car_id])
     rescue ActiveRecord::RecordNotFound
       @cart = Cart.create
       session[:car_id] = cart.id
       @cart
  end
end
