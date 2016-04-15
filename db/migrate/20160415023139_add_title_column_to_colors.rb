class AddTitleColumnToColors < ActiveRecord::Migration
  def change
    add_column :colors, :title, :string
  end
end
