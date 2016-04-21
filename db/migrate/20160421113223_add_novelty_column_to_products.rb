class AddNoveltyColumnToProducts < ActiveRecord::Migration
  def change
    add_column :products, :novelty, :boolean
  end
end
