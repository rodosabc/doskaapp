class LineItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :product
  belongs_to :order

  def items_price
    quantity * Product.find(product_id).price
  end
end
