class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  has_many :products, through: :line_items

  def add_product(product_id)

      current_item = line_items.build(product_id: product_id)
    current_item
  end
  def total_price
    price = 0
    line_items.each do |line_item|
      price += Product.find(line_item.product_id).price
    end
    price
  end

  def products_quantity
    quantity = products.size
    quantity
  end
end
