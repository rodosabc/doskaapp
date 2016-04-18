class Product < ActiveRecord::Base
  has_many :line_items
  has_many :carts, through: :line_items
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :colors
  has_and_belongs_to_many :sizes
  has_and_belongs_to_many :materials
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment :image,
                       content_type: { content_type: ["image/jpeg", "image/gif", "image/png","image/jpg"] }
  validates :title, presence: true
  validates :price, presence: true, numericality: true
end
