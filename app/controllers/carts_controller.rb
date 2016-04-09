class CartsController < ApplicationController

  def index
  end
  
  def create
    @cart = Cart.new(cart_params)
    @cart.save
    end
  def show
    @cart
  end

  def update
    @cart.update(cart_params)
  end

  def destroy
    @cart.destroy
  end

  private
  def cart_params
    params.require(:cart).permit()
  end
end