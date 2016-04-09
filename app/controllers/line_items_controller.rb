class LineItemsController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:create]

  def create
    product = Product.find(params[:id])
    @line_item = @cart.add_product(product.id)
    @line_item.save
    redirect_to :back
  end

  def update
    @line_item.update(line_item_params)
  end

  def destroy
    @line_item.destroy
  end

  private
  def line_item_params
    params.require(:line_item).permit(:id)
  end
end