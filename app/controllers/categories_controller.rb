class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end
  def create
    @category = Category.new(category_params)
    @category.save
  end

  def update
    @category.update(category_params)
  end

  def destroy
    @category.destroy
  end

  private
  def category_params
    params.require(:category).permit(:id,:category_name, :description)
  end
end