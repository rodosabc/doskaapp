class MainController < ApplicationController
  def index
=begin
    products = Product.ids
    @random_ids = products.sort_by { rand}.slice(0,6)
=end
    @hit_products = Product.where("hit = ? or novelty = ? or sale = ?", true, true, true)
  end
end
