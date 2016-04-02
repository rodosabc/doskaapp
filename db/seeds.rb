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
                image_url:'homer3.jpg',
                price: 1488.01)
Product.create!(id: 1,
                title: 'Диван "Мужское Счастье"',
                description:"Серия 3 Сезон 24",
                image_url:'homer1.jpg',
                price: 228.95)
Product.create!(id: 2,
                title: 'Диван "Блаженство"',
                description:"Серия 13 Сезон 24",
                image_url:'homer2.jpg',
                price: 300.9)
Product.create!(id: 3,
                title: 'Мардж задумчива',
                description:"Серия 3 Сезон 24",
                image_url:'marg1.jpg',
                price: 1488.01)
Product.create!(id: 4,
                title: 'Мардж удивлена',
                description:"Серия 3 Сезон 24",
                image_url:'marg2.jpg',
                price: 228.95)
Product.create!(id: 5,
                title: 'Мардж решает вопросы',
                description:"Серия 13 Сезон 24",
                image_url:'marg3.jpg',
                price: 300.9)
Product.create!(id: 6,
                title: 'Мардж и Гомер',
                description:"Серия 13 Сезон 24",
                image_url:'marghomer.jpg',
                price: 300.9)

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