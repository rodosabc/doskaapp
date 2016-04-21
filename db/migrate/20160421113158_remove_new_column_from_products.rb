class RemoveNewColumnFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :new, :boolean
  end
end
