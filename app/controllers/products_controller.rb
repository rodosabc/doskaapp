class ProductsController < ApplicationController

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
end