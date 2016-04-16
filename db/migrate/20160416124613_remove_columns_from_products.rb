class RemoveColumnsFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :material, :string
    remove_column :products, :size, :string
  end
end
