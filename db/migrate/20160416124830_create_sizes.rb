class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.string :size
      t.decimal :overpay

      t.timestamps null: false
    end
  end
end
