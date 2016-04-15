class AddColorColumnToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :color, :string
    add_column :line_items, :color_name, :string
  end
end
