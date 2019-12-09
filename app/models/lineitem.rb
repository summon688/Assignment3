class Lineitem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  
  def item_total_price
    product.Price * quantities
  end
end
