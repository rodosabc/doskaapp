class Order < ActiveRecord::Base
=begin
  include ActiveModel::EachValidator
  validates_with EmailValidator
=end

  has_many :line_items, dependent: :destroy
  validates :name,presence: true
=begin
  validates :email,presence: true, email:true #TODO email validation
=end
  validates :phone_number,presence: true #TODO phone validation


  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end
end
