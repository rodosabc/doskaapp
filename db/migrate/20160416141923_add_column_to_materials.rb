class AddColumnToMaterials < ActiveRecord::Migration
  def change
    add_reference :materials, :product, index: true, foreign_key: true
  end
end
