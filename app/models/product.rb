class Product < ActiveRecord::Base
  has_many :line_items
  has_many :carts, through: :line_items
  has_many :category_products
  has_many :categories, through: :category_products
  has_and_belongs_to_many :colors
  has_many :sizes, dependent: :destroy
  has_many :materials, dependent: :destroy
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment :image,
                       content_type: { content_type: ["image/jpeg", "image/gif", "image/png","image/jpg"] }
  validates :title, presence: true
  validates :price, presence: true, numericality: true
end
