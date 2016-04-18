class AddColumnsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :second_name, :string
  end
end
