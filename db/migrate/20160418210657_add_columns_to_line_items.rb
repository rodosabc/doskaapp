class AddColumnsToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :final_price, :integer
  end
end
