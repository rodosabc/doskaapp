# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#...
Category.delete_all
Category.create!(category_name: 'Кровати')
Category.create!(category_name: 'Столы')
Category.create!(category_name: 'Стулья')
Category.create!(category_name: 'Тумбы')
Category.create!(category_name: 'Комоды',)
#...
Product.delete_all

Product.create!(
                title: 'Кровать ткань белая эмаль',
                :image => File.new("#{Rails.root}/app/assets/images/1.jpg"),
                price: 5000 + rand(20000),
                categories: Category.where(:category_name => 'Кровати'))
Product.create!(
    title: 'Нова с ящиками',
    :image => File.new("#{Rails.root}/app/assets/images/2.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Кровати'))
Product.create!(
    title: 'Венера',
    :image => File.new("#{Rails.root}/app/assets/images/3.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Кровати'))
Product.create!(
    title: 'Афина Балдахин',
    :image => File.new("#{Rails.root}/app/assets/images/4.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Кровати'))
Product.create!(
    title: 'Кровать Азалия',
    :image => File.new("#{Rails.root}/app/assets/images/5.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Кровати'))



Product.create!(
    title: 'Стол №1',
    :image => File.new("#{Rails.root}/app/assets/images/6.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Столы'))
Product.create!(
    title: 'Стол №2',
    :image => File.new("#{Rails.root}/app/assets/images/7.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Столы'))
Product.create!(
    title: 'Стол №3',
    :image => File.new("#{Rails.root}/app/assets/images/8.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Столы'))
Product.create!(
    title: 'Стол №4',
    :image => File.new("#{Rails.root}/app/assets/images/9.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Столы'))
Product.create!(
    title: 'Стол №5',
    :image => File.new("#{Rails.root}/app/assets/images/10.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Столы'))



Product.create!(
    title: 'Стул Фортуна №2',
    :image => File.new("#{Rails.root}/app/assets/images/11.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Стулья'))
Product.create!(
    title: 'Стул Лира №2',
    :image => File.new("#{Rails.root}/app/assets/images/12.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Стулья'))
Product.create!(
    title: 'Стул Лира №1',
    :image => File.new("#{Rails.root}/app/assets/images/13.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Стулья'))
Product.create!(
    title: 'Стул Лира №5',
    :image => File.new("#{Rails.root}/app/assets/images/14.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Стулья'))
Product.create!(
    title: 'Стул деревянный точеный',
    :image => File.new("#{Rails.root}/app/assets/images/15.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Стулья'))



Product.create!(
    title: 'Телефонка',
    :image => File.new("#{Rails.root}/app/assets/images/16.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Тумбы'))
Product.create!(
    title: 'Тумба для обуви большая',
    :image => File.new("#{Rails.root}/app/assets/images/17.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Тумбы'))
Product.create!(
    title: 'Тумба для обуви большая закрытая',
    :image => File.new("#{Rails.root}/app/assets/images/18.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Тумбы'))
Product.create!(
    title: 'Тумба Классика',
    :image => File.new("#{Rails.root}/app/assets/images/19.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Тумбы'))
Product.create!(
    title: 'Тумба ТВ классика',
    :image => File.new("#{Rails.root}/app/assets/images/20.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Тумбы'))


Product.create!(
    title: 'Классика',
    :image => File.new("#{Rails.root}/app/assets/images/21.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Комоды'))
Product.create!(
    title: 'Фараон с зеркалом',
    :image => File.new("#{Rails.root}/app/assets/images/22.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Комоды'))
Product.create!(
    title: 'Новый',
    :image => File.new("#{Rails.root}/app/assets/images/23.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Комоды'))
Product.create!(
    title: 'Стиль',
    :image => File.new("#{Rails.root}/app/assets/images/24.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Комоды'))
Product.create!(
    title: 'Обувница',
    :image => File.new("#{Rails.root}/app/assets/images/25.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Комоды'))

=begin
Product.create!(
                title: 'Диван "Мужское Счастье"',
                description:"Серия 3 Сезон 24",
                :image => File.new("#{Rails.root}/app/assets/images/homer1.jpg"),
                price: 20.00)
Product.create!(
                title: 'Диван "Блаженство"',
                description:"Серия 13 Сезон 24",
                :image => File.new("#{Rails.root}/app/assets/images/homer2.jpg"),
                price: 30.00)
Product.create!(
                title: 'Мардж задумчива',
                description:"Серия 3 Сезон 24",
                :image => File.new("#{Rails.root}/app/assets/images/marg1.jpg"),
                price: 40.00)
Product.create!(
                title: 'Мардж удивлена',
                description:"Серия 3 Сезон 24",
                :image => File.new("#{Rails.root}/app/assets/images/marg2.jpg"),
                price: 50.00)
Product.create!(
                title: 'Мардж решает вопросы',
                description:"Серия 13 Сезон 24",
                :image => File.new("#{Rails.root}/app/assets/images/marg3.jpeg"),
                price: 60.00)
Product.create!(
                title: 'Мардж и Гомер',
                description:"Серия 13 Сезон 24",
                :image => File.new("#{Rails.root}/app/assets/images/marghomer.jpg"),
                price: 70.00
                )
=end


#...

=begin
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
=end
#...

=begin
      t.string :title
      t.text :text
      t.date :date
    add_column :blog_items, :image_url, :string
    add_column :blog_items, :author, :string
    add_column :blog_items, :theme, :string
=end
