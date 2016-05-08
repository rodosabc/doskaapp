class Color < ActiveRecord::Base
  has_and_belongs_to_many :products
  validates :title, presence: true
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment :image,
                       content_type: { content_type: ["image/jpeg", "image/gif", "image/png","image/jpg"] }
end
