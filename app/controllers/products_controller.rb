class ProductsController < ApplicationController

  before_action :all_categories, :all_products
  def index
    @category = Category.find(params[:category_id])
    @products = @category.products
  end
  def create
    @product = Product.new(product_params)
    @product.save
  end

  def update
    @product.update(product_params)
  end

  def destroy
    @product.destroy
  end

  private
  def product_params
    params.require(:product).permit(:title,:description,:image,:price)
  end

  def all_products
    @products = Product.all
  end

  def all_categories
    @categories = Category.all
  end
end