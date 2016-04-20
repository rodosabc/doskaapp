class Material < ActiveRecord::Base
  has_and_belongs_to_many :products
  validates :name, presence: true, uniqueness: true
  validates :overpay, numericality: true, allow_blank: true
end
