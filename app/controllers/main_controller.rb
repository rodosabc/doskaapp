class MainController < ApplicationController
  def index
    products = Product.ids
    @random_ids = products.sort_by { rand}.slice(0,6)
    @hit_products = Product.where("hit = ? or novelty = ? or sale = ?", true, true, true)
  end
end
