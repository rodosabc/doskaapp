class AssColumnsToMaterialsAndSizes < ActiveRecord::Migration
  def change
    add_column :materials, :overpay, :integer
    add_column :sizes, :price, :integer
  end
end
