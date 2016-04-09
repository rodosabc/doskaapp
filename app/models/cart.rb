class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  has_many :products, through: :line_items

  def add_product(product_id)
    current_item = line_items.find_by(product_id: product_id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(product_id: product_id)
      current_item.quantity = 1
    end
    current_item
  end
  def total_price
    price = 0
    line_items.each do |line_item|
      price += Product.find(line_item.product_id).price * line_item.quantity
    end
    price
  end
end
