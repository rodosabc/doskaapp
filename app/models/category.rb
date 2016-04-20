class Category < ActiveRecord::Base
  has_and_belongs_to_many :products
  validates :category_name, presence: true, uniqueness: true

  def first_category
    first_category = Category.all.first!
    first_category
  end
end
