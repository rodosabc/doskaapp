class CreateFuckYous < ActiveRecord::Migration
  def change
    create_table :fuck_yous do |t|
      t.integer :fuck_yourself_counter

      t.timestamps null: false
    end
  end
end
