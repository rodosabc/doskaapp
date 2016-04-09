class CreateContactItems < ActiveRecord::Migration
  def change
    create_table :contact_items do |t|
      t.string :title
      t.string :name
      t.string :adress
      t.string :phone_number
      t.text :other

      t.timestamps null: false
    end
  end
end
