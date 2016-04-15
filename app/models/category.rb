class Category < ActiveRecord::Base
  has_many :category_products
  has_many :products, through: :category_products

  validates :category_name, presence: true

  def first_category
    first_category = Category.all.first
    first_category
  end
end
