class Product < ActiveRecord::Base
  has_many :line_items
  has_many :carts, through: :line_items
  has_many :category_products
  has_many :categories, through: :category_products

  validates :title, presence: true
  validates :price, presence: true, numericality: true
end
