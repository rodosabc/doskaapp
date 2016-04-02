class LineItemsController < ApplicationController
  
  def create
      if Cart.exists?(session[:cart_id])
        @cart = Cart.find(session[:cart_id])
      else
        @cart = Cart.new
        @cart.save
        session[:cart_id] = @cart.id
      end
      if LineItem.exists?(:product_id => params[:id])
        @line_item = LineItem.find_by_product_id(params[:id])
        @line_item.update(quantity: @line_item.quantity + 1)
      else
        @cart.line_items.create(product_id: params[:id], quantity: 1)
      end
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
    params.require(:line_item).permit(:product_id)
  end
end