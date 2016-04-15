class AddColumnsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :material, :string
    add_column :products, :size, :string
  end
end
