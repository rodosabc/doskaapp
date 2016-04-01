class CategoriesController < ApplicationController
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
    params.require(:category).permit(:category_name,:description)
  end
end