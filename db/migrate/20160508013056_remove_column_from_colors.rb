class RemoveColumnFromColors < ActiveRecord::Migration
  def change
    remove_column :colors, :color, :string
  end
end
