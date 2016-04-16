class MainController < ApplicationController
  def index
    products = Product.ids
    @random_ids = products.sort_by { rand}.slice(0,6)
  end
end
