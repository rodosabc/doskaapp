class BindMaterialsAndSizesToProducts < ActiveRecord::Migration
  def change
    create_table :materials_products, id: false do |t|
      t.belongs_to :material, index: true
      t.belongs_to :product, index: true
    end
    create_table :sizes_products, id: false do |t|
      t.belongs_to :size, index: true
      t.belongs_to :product, index: true
    end
  end
end
