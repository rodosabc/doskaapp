class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :all_products, :all_categories,:set_cart
  include CurrentCart

  private

  def all_products
    @products = Product.all
  end

  def all_categories
    @categories = Category.all
  end

  def line_items_quantity
    @quantity = @cart.line_items.size
  end
end
