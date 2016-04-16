class LineItemsController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:create,:destroy,:update]
  before_action :set_line_item, only: [:update, :destroy]

  def create
    product = Product.find(params[:id])
    @line_item = @cart.add_product(product.id)
    @line_item.color = params[:color]
    @line_item.size = params[:size]
    @line_item.material_name = params[:material]
    respond_to do |format|
      if @line_item.save
        format.html { redirect_to :back }
        format.js
      end
    end
  end

  def update
    @line_item.update(line_item_params)
  end

  def destroy
    @line_item.destroy
    redirect_to :back
  end

  private
  def line_item_params
    params.require(:line_item).permit(:id,:color,:size,:material)
  end
  def set_line_item
    @line_item = @cart.line_items.find_by_product_id(params[:id])
  end
end