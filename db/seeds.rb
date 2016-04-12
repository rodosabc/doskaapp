# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all
Product.create!(id: 0,
                title: 'Диван "Превосходство"',
                description:"Серия 2 Сезон 24",
                :image => File.new("#{Rails.root}/app/assets/images/homer3.jpg"),
                price: 10.00)
Product.create!(id: 1,
                title: 'Диван "Мужское Счастье"',
                description:"Серия 3 Сезон 24",
                :image => File.new("#{Rails.root}/app/assets/images/homer1.jpg"),
                price: 20.00)
Product.create!(id: 2,
                title: 'Диван "Блаженство"',
                description:"Серия 13 Сезон 24",
                :image => File.new("#{Rails.root}/app/assets/images/homer2.jpg"),
                price: 30.00)
Product.create!(id: 3,
                title: 'Мардж задумчива',
                description:"Серия 3 Сезон 24",
                :image => File.new("#{Rails.root}/app/assets/images/marg1.jpg"),
                price: 40.00)
Product.create!(id: 4,
                title: 'Мардж удивлена',
                description:"Серия 3 Сезон 24",
                :image => File.new("#{Rails.root}/app/assets/images/marg2.jpg"),
                price: 50.00)
Product.create!(id: 5,
                title: 'Мардж решает вопросы',
                description:"Серия 13 Сезон 24",
                :image => File.new("#{Rails.root}/app/assets/images/marg3.jpeg"),
                price: 60.00)
Product.create!(id: 6,
                title: 'Мардж и Гомер',
                description:"Серия 13 Сезон 24",
                :image => File.new("#{Rails.root}/app/assets/images/marghomer.jpg"),
                price: 70.00)

#...
Category.delete_all
Category.create!(id: 0,
                 category_name: '"Гомер"',
                description:"Эта категория Гомера!",
                )
Category.create!(id: 1,
                category_name: '"Мардж"',
                description:"Эта категория Марджери Симпсон!",
                )
#...
CategoryProduct.delete_all
CategoryProduct.create!(category_id: 0,
                        product_id: 0,)
CategoryProduct.create!(category_id: 0,
                        product_id: 1,)
CategoryProduct.create!(category_id: 0,
                        product_id: 2,)
CategoryProduct.create!(category_id: 0,
                        product_id: 6,)
CategoryProduct.create!(category_id: 1,
                        product_id: 3,)
CategoryProduct.create!(category_id: 1,
                        product_id: 4,)
CategoryProduct.create!(category_id: 1,
                        product_id: 5,)
CategoryProduct.create!(category_id: 1,
                        product_id: 6,)
#...
=begin
      t.string :title
      t.text :text
      t.date :date
    add_column :blog_items, :image_url, :string
    add_column :blog_items, :author, :string
    add_column :blog_items, :theme, :string
=end

BlogItem.delete_all
BlogItem.create!(id: 0,title: 'Blog',text: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus adipisci deserunt dolores eos, et fugit harum iure iusto maiores nemo nihil non numquam, quae reiciendis rem similique ullam. Labore, quo.',date: Date.today, image_url: 'homer1.jpg')
BlogItem.create!(id: 1,title: 'Blog',text: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus adipisci deserunt dolores eos, et fugit harum iure iusto maiores nemo nihil non numquam, quae reiciendis rem similique ullam. Labore, quo.',date: Date.today, image_url: 'homer1.jpg')
BlogItem.create!(id: 2,title: 'Blog',text: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus adipisci deserunt dolores eos, et fugit harum iure iusto maiores nemo nihil non numquam, quae reiciendis rem similique ullam. Labore, quo.',date: Date.today, image_url: 'homer1.jpg')

