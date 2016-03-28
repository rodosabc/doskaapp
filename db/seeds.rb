# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all
#...
Product.create!(title: 'Диван "Превосходство"',
                description:"Серия 2 Сезон 24",
                image_url:'homer3.jpg',
                price: 1488.01)
#...
Product.create!(title: 'Диван "Мужское Счастье"',
                description:"Серия 3 Сезон 24",
                image_url:'homer1.jpg',
                price: 228.95)
#...
Product.create!(title: 'Диван "Блаженство"',
                description:"Серия 13 Сезон 24",
                image_url:'homer2.jpg',
                price: 300.9)
#...