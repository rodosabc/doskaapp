class RemoveColumnsFromSizesAndMaterials < ActiveRecord::Migration
  def change
    remove_column :materials, :product_id, :belongs_to
    remove_column :sizes, :product_id, :belongs_to
  end
end
