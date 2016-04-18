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
Color.delete_all
Color.create!(color: 'e8dae8',title: 'Клубничная каша' )
Color.create!(color: '2e072e',title: 'Зловещий' )
Color.create!(color: '644de3',title: 'Космос' )
Color.create!(color: '4de370',title: 'Режущий' )
Color.create!(color: 'e3ac4d',title: 'Пустыня' )
Color.create!(color: 'ba1c00',title: 'Кровавая Мэри' )
Color.create!(color: '9eba00',title: 'Джунгли' )
Color.create!(color: '2f3609',title: 'Болото' )
Color.create!(color: '1cd6b1',title: 'Лазурь' )
Color.create!(color: '25d61c',title: 'Зелёное яблоко' )

#...
Product.delete_all

Product.create!(
    title: 'Кровать ткань белая эмаль',
    :image => File.new("#{Rails.root}/app/assets/images/1.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Кровати'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']))
Product.create!(
    title: 'Нова с ящиками',
    :image => File.new("#{Rails.root}/app/assets/images/2.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Кровати'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']))
Product.create!(
    title: 'Венера',
    :image => File.new("#{Rails.root}/app/assets/images/3.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Кровати'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']))
Product.create!(
    title: 'Афина Балдахин',
    :image => File.new("#{Rails.root}/app/assets/images/4.jpeg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Кровати'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']))
Product.create!(
    title: 'Кровать Азалия',
    :image => File.new("#{Rails.root}/app/assets/images/5.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Кровати'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']))



Product.create!(
    title: 'Стол №1',
    :image => File.new("#{Rails.root}/app/assets/images/6.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Столы'),
    colors: Color.where(:title => ['Кровавая Мэри','Джунгли','Болото','Лазурь','Зелёное яблоко']))
Product.create!(
    title: 'Стол №2',
    :image => File.new("#{Rails.root}/app/assets/images/7.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Столы'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']))
Product.create!(
    title: 'Стол №3',
    :image => File.new("#{Rails.root}/app/assets/images/8.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Столы'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']))
Product.create!(
    title: 'Стол №4',
    :image => File.new("#{Rails.root}/app/assets/images/9.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Столы'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']))
Product.create!(
    title: 'Стол №5',
    :image => File.new("#{Rails.root}/app/assets/images/10.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Столы'),
    colors: Color.where(:title => ['Кровавая Мэри','Джунгли','Болото','Лазурь','Зелёное яблоко']))



Product.create!(
    title: 'Стул Фортуна №2',
    :image => File.new("#{Rails.root}/app/assets/images/11.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Стулья'),
    colors: Color.where(:title => ['Кровавая Мэри','Джунгли','Болото','Лазурь','Зелёное яблоко']))
Product.create!(
    title: 'Стул Лира №2',
    :image => File.new("#{Rails.root}/app/assets/images/12.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Стулья'),
    colors: Color.where(:title => ['Кровавая Мэри','Джунгли','Болото','Лазурь','Зелёное яблоко']))
Product.create!(
    title: 'Стул Лира №1',
    :image => File.new("#{Rails.root}/app/assets/images/13.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Стулья'),
    colors: Color.where(:title => ['Кровавая Мэри','Джунгли','Болото','Лазурь','Зелёное яблоко']))
Product.create!(
    title: 'Стул Лира №5',
    :image => File.new("#{Rails.root}/app/assets/images/14.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Стулья'),
    colors: Color.where(:title => ['Кровавая Мэри','Джунгли','Болото','Лазурь','Зелёное яблоко']))
Product.create!(
    title: 'Стул деревянный точеный',
    :image => File.new("#{Rails.root}/app/assets/images/15.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Стулья'),
    colors: Color.where(:title => ['Кровавая Мэри','Джунгли','Болото','Лазурь','Зелёное яблоко']))



Product.create!(
    title: 'Телефонка',
    :image => File.new("#{Rails.root}/app/assets/images/16.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Тумбы'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']))
Product.create!(
    title: 'Тумба для обуви большая',
    :image => File.new("#{Rails.root}/app/assets/images/17.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Тумбы'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']))
Product.create!(
    title: 'Тумба для обуви большая закрытая',
    :image => File.new("#{Rails.root}/app/assets/images/18.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Тумбы'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']))
Product.create!(
    title: 'Тумба Классика',
    :image => File.new("#{Rails.root}/app/assets/images/19.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Тумбы'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']))
Product.create!(
    title: 'Тумба ТВ классика',
    :image => File.new("#{Rails.root}/app/assets/images/20.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Тумбы'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']))


Product.create!(
    title: 'Классика',
    :image => File.new("#{Rails.root}/app/assets/images/21.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Комоды'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']))
Product.create!(
    title: 'Фараон с зеркалом',
    :image => File.new("#{Rails.root}/app/assets/images/22.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Комоды'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']))
Product.create!(
    title: 'Новый',
    :image => File.new("#{Rails.root}/app/assets/images/23.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Комоды'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']))
Product.create!(
    title: 'Стиль',
    :image => File.new("#{Rails.root}/app/assets/images/24.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Комоды'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']))
Product.create!(
    title: 'Обувница',
    :image => File.new("#{Rails.root}/app/assets/images/25.jpg"),
    price: 5000 + rand(20000),
    categories: Category.where(:category_name => 'Комоды'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']))

