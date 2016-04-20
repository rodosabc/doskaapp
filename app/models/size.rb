class Size < ActiveRecord::Base
  has_and_belongs_to_many :products
  validates :size, presence: true, uniqueness: true
  validates :price, numericality: true
end
