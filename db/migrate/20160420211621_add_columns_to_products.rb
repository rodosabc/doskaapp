class AddColumnsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :hit, :boolean
  end
end
