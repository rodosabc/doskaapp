class LineItemsController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:create,:destroy,:update]
  before_action :set_line_item, only: [:update, :destroy]
  skip_before_filter :verify_authenticity_token, :only => [:destroy]

  def create
    product = Product.find(params[:id])
    color = Color.find(params[:color])
    size = Size.find_by_size(params[:size])
    material = Material.find(params[:material])
    @line_item = @cart.add_product(product.id)
    @line_item.color_name = color.title
    @line_item.size = size.size
    @line_item.size_price = size.price
    @line_item.material_name = material.name
    @line_item.material_overpay =  material.overpay
    @line_item.final_price =  size.price + material.overpay
    @line_item.save
    puts params.inspect
    respond_to do |format|
        if params[:commit]=='Купить'
          @cart.line_items =[@line_item]
          format.html {redirect_to new_order_path}
        else params[:commit]=='Добавить'
          format.html {redirect_to :back}
        end
    end
  end

  def update
    @line_item.update(line_item_params)
  end

  def destroy
    @line_item.destroy
    respond_to do |format|
      format.html {redirect_to :back}
    end
  end

  private
  def line_item_params
    params.require(:line_item).permit(:id,:color,:size,:material,:commit)
  end
  def set_line_item
    @line_item = @cart.line_items.find_by_product_id(params[:id])
  end
end