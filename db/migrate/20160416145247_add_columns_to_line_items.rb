class AddColumnsToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :material_name, :string
    add_column :line_items, :size, :string
  end
end
