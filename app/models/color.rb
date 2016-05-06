class Color < ActiveRecord::Base
  has_and_belongs_to_many :products
  validates :title, presence: true
  validates :color, presence: true
end
