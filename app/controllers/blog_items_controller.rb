class BlogItemsController < ApplicationController

  before_action :set_blog_item, only: [:show]

  def index
    @blog_items = BlogItem.all
  end

  def show
  end

  def create
    @blog_item = BlogItem.new(blog_item_params)
    @blog_item.save
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    @blog_item.update(blog_item_params)
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @blog_item.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_blog_item
    @blog_item = BlogItem.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def blog_item_params
    params.require(:blog_item).permit(:title, :text, :date)
  end
end