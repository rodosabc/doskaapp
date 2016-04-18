class RemoveColumnsFromMaterialsAndSizes < ActiveRecord::Migration
  def change
    remove_column :materials, :price, :integer
    remove_column :sizes, :overpay, :integer
  end
end
