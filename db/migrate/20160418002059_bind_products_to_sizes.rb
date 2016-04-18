class BindProductsToSizes < ActiveRecord::Migration
  def change
    create_table :products_sizes, id: false do |t|
      t.belongs_to :size, index: true
      t.belongs_to :product, index: true
    end
  end
end
