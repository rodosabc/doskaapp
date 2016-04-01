class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :category_name
      t.text :description
      t.string :meta_keywords
      t.text :meta_description

      t.timestamps null: false
    end
  end
end
