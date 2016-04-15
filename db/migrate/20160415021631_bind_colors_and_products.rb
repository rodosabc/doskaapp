class BindColorsAndProducts < ActiveRecord::Migration
  def change
    create_table :colors_products, id: false do |t|
      t.belongs_to :color, index: true
      t.belongs_to :product, index: true
    end
  end
end
