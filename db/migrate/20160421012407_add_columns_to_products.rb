class AddColumnsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :sale, :boolean
    add_column :products, :new, :boolean
  end
end
