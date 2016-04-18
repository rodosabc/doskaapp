class LineItemsController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:create,:destroy,:update]
  before_action :set_line_item, only: [:update, :destroy]

  def create
    product = Product.find(params[:id])
    @line_item = @cart.add_product(product.id)
    @line_item.color = params[:color]
    @line_item.size = params[:size]
    @line_item.material_name = Material.where(:id => params[:material]).name
    @line_item.save
    puts params.inspect
    respond_to do |format|
        if params[:commit]=='buy'
          @cart.line_items =[@line_item]
          format.html {redirect_to new_order_path}
        else params[:commit]=='add'
          format.html {redirect_to :back}
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
    params.require(:line_item).permit(:id,:color,:size,:material,:commit)
  end
  def set_line_item
    @line_item = @cart.line_items.find_by_product_id(params[:id])
  end
end