class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :all_products, :all_categories

  private

  def all_products
    @products = Product.all
  end

  def all_categories
    @categories = Category.all
  end
end
