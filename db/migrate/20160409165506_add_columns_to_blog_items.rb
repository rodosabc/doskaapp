class AddColumnsToBlogItems < ActiveRecord::Migration
  def change
    add_column :blog_items, :image_url, :string
    add_column :blog_items, :author, :string
    add_column :blog_items, :theme, :string
  end
end
