# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#...
Product.delete_all
Size.delete_all

#КРОВАТИ НЕ ЗАБУДЬ ОСНОВАНИЯ
json = ActiveSupport::JSON.decode(File.read('db/krovati.json'))
json.each do |a|

  Product.create!(:title => a['Название'],
                  :price => 0,
                  :sizes => Size.create(a['Размеры']),
                  :materials => Material.create(a['Материалы']),
                  :colors => Color.create(a['Цвета']),
                  :image => File.new("#{Rails.root}/app/assets/images/#{a['Название']}.jpg"),
                  categories: Category.where(:category_name => 'Кровати'))



end
#МАТРАСЫ НЕ ЗАБУДЬ НАМАТРАСНИКИ
json = ActiveSupport::JSON.decode(File.read('db/krovati.json'))
json.each do |a|

  Product.create!(:title => a['Название'],
                  :price => 0,
                  :sizes => Size.create(a['Размеры']),
                  :materials => Material.create(a['Материалы']),
                  :colors => Color.create(a['Цвета']),
                  :image => File.new("#{Rails.root}/app/assets/images/#{a['Название']}.jpg"),
                  categories: Category.where(:category_name => 'Кровати'))



end
=begin
  Product.create!(
      title: 'Кровать ткань белая эмаль',
      :image => File.new("#{Rails.root}/app/assets/images/1.jpg"),
      price:3000,
      hit:true,
      categories: Category.where(:category_name => 'Кровати'),
      colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']),
      materials: Material.where(:name => ['Стандартный','Стандартный','Берёза','Дуб','Ясень','Тополь','Пальма','Тёмное дерево','Тёмная материя']),
      sizes: Size.where(:size => ['1x2','2x3','3x4','4x3','5x3','5x4','10x10']))
=end
=begin
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
Material.delete_all
Material.create!(name: 'Стандартный',overpay: 0 )
Material.create!(name: 'Берёза',overpay: 3500 )
Material.create!(name: 'Дуб',overpay: 4000 )
Material.create!(name: 'Ясень',overpay: 5000 )
Material.create!(name: 'Тополь',overpay: 6000 )
Material.create!(name: 'Пальма',overpay: 7000 )
Material.create!(name: 'Тёмное дерево',overpay: 8000 )
Material.create!(name: 'Тёмная материя',overpay: 9000 )
#...

#...
Size.delete_all
Size.create!(size: '1x2',price: 3001 )
Size.create!(size: '2x3',price: 4001 )
Size.create!(size: '3x4',price: 5001 )
Size.create!(size: '4x3',price: 6001 )
Size.create!(size: '5x3',price: 7001 )
Size.create!(size: '5x4',price: 8001 )
Size.create!(size: '10x10',price: 9001 )
#...


Product.delete_all

Product.create!(
    title: 'Кровать ткань белая эмаль',
    :image => File.new("#{Rails.root}/app/assets/images/1.jpg"),
    price:3000,
    hit:true,
    categories: Category.where(:category_name => 'Кровати'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']),
    materials: Material.where(:name => ['Стандартный','Стандартный','Берёза','Дуб','Ясень','Тополь','Пальма','Тёмное дерево','Тёмная материя']),
    sizes: Size.where(:size => ['1x2','2x3','3x4','4x3','5x3','5x4','10x10']))
Product.create!(
    title: 'Нова с ящиками',
    :image => File.new("#{Rails.root}/app/assets/images/2.jpg"),
    price:3000,
    hit:true,
    categories: Category.where(:category_name => 'Кровати'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']),
    materials: Material.where(:name => ['Стандартный','Берёза','Дуб','Ясень','Тополь','Пальма','Тёмное дерево','Тёмная материя']),
    sizes: Size.where(:size => ['1x2','2x3','3x4','4x3','5x3','5x4','10x10']))
Product.create!(
    title: 'Венера',
    :image => File.new("#{Rails.root}/app/assets/images/3.jpg"),
    price:3000,
    categories: Category.where(:category_name => 'Кровати'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']),
    materials: Material.where(:name => ['Стандартный','Берёза','Дуб','Ясень','Тополь','Пальма','Тёмное дерево','Тёмная материя']),
    sizes: Size.where(:size => ['1x2','2x3','3x4','4x3','5x3','5x4','10x10']))
Product.create!(
    title: 'Афина Балдахин',
    :image => File.new("#{Rails.root}/app/assets/images/4.jpeg"),
    price:3000,
    categories: Category.where(:category_name => 'Кровати'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']),
    materials: Material.where(:name => ['Стандартный','Берёза','Дуб','Ясень','Тополь','Пальма','Тёмное дерево','Тёмная материя']),
    sizes: Size.where(:size => ['1x2','2x3','3x4','4x3','5x3','5x4','10x10']))
Product.create!(
    title: 'Кровать Азалия',
    :image => File.new("#{Rails.root}/app/assets/images/5.jpg"),
    price:3000,
    categories: Category.where(:category_name => 'Кровати'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']),
    materials: Material.where(:name => ['Стандартный','Берёза','Дуб','Ясень','Тополь','Пальма','Тёмное дерево','Тёмная материя']),
    sizes: Size.where(:size => ['1x2','2x3','3x4','4x3','5x3','5x4','10x10']))



Product.create!(
    title: 'Стол №1',
    :image => File.new("#{Rails.root}/app/assets/images/6.jpg"),
    price:3000,
    categories: Category.where(:category_name => 'Столы'),
    colors: Color.where(:title => ['Кровавая Мэри','Джунгли','Болото','Лазурь','Зелёное яблоко']),
    materials: Material.where(:name => ['Стандартный','Берёза','Дуб','Ясень','Тополь','Пальма','Тёмное дерево','Тёмная материя']))
Product.create!(
    title: 'Стол №2',
    :image => File.new("#{Rails.root}/app/assets/images/7.jpg"),
    price:3000,
    hit:true,
    categories: Category.where(:category_name => 'Столы'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']),
    materials: Material.where(:name => ['Стандартный','Берёза','Дуб','Ясень','Тополь','Пальма','Тёмное дерево','Тёмная материя']),
    sizes: Size.where(:size => ['1x2','2x3','3x4','4x3','5x3','5x4','10x10']))
Product.create!(
    title: 'Стол №3',
    :image => File.new("#{Rails.root}/app/assets/images/8.jpg"),
    price:3000,
    hit:true,
    categories: Category.where(:category_name => 'Столы'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']),
    materials: Material.where(:name => ['Стандартный','Берёза','Дуб','Ясень','Тополь','Пальма','Тёмное дерево','Тёмная материя']),
    sizes: Size.where(:size => ['1x2','2x3','3x4','4x3','5x3','5x4','10x10']))
Product.create!(
    title: 'Стол №4',
    :image => File.new("#{Rails.root}/app/assets/images/9.jpg"),
    price:3000,
    categories: Category.where(:category_name => 'Столы'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']),
    materials: Material.where(:name => ['Стандартный','Берёза','Дуб','Ясень','Тополь','Пальма','Тёмное дерево','Тёмная материя']),
    sizes: Size.where(:size => ['1x2','2x3','3x4','4x3','5x3','5x4','10x10']))
Product.create!(
    title: 'Стол №5',
    :image => File.new("#{Rails.root}/app/assets/images/10.jpg"),
    price:3000,
    categories: Category.where(:category_name => 'Столы'),
    colors: Color.where(:title => ['Кровавая Мэри','Джунгли','Болото','Лазурь','Зелёное яблоко']),
    materials: Material.where(:name => ['Стандартный','Берёза','Дуб','Ясень','Тополь','Пальма','Тёмное дерево','Тёмная материя']),
    sizes: Size.where(:size => ['1x2','2x3','3x4','4x3','5x3','5x4','10x10']))



Product.create!(
    title: 'Стул Фортуна №2',
    :image => File.new("#{Rails.root}/app/assets/images/11.jpg"),
    price:3000,
    categories: Category.where(:category_name => 'Стулья'),
    colors: Color.where(:title => ['Кровавая Мэри','Джунгли','Болото','Лазурь','Зелёное яблоко']),
    materials: Material.where(:name => ['Стандартный','Берёза','Дуб','Ясень','Тополь','Пальма','Тёмное дерево','Тёмная материя']),
    sizes: Size.where(:size => ['1x2','2x3','3x4','4x3','5x3','5x4','10x10']))
Product.create!(
    title: 'Стул Лира №2',
    :image => File.new("#{Rails.root}/app/assets/images/12.jpg"),
    price:3000,
    hit:true,
    categories: Category.where(:category_name => 'Стулья'),
    colors: Color.where(:title => ['Кровавая Мэри','Джунгли','Болото','Лазурь','Зелёное яблоко']),
    materials: Material.where(:name => ['Стандартный','Берёза','Дуб','Ясень','Тополь','Пальма','Тёмное дерево','Тёмная материя']),
    sizes: Size.where(:size => ['1x2','2x3','3x4','4x3','5x3','5x4','10x10']))
Product.create!(
    title: 'Стул Лира №1',
    :image => File.new("#{Rails.root}/app/assets/images/13.jpg"),
    price:3000,
    categories: Category.where(:category_name => 'Стулья'),
    colors: Color.where(:title => ['Кровавая Мэри','Джунгли','Болото','Лазурь','Зелёное яблоко']),
    materials: Material.where(:name => ['Стандартный','Берёза','Дуб','Ясень','Тополь','Пальма','Тёмное дерево','Тёмная материя']),
    sizes: Size.where(:size => ['1x2','2x3','3x4','4x3','5x3','5x4','10x10']))
Product.create!(
    title: 'Стул Лира №5',
    :image => File.new("#{Rails.root}/app/assets/images/14.jpg"),
    price:3000,
    categories: Category.where(:category_name => 'Стулья'),
    colors: Color.where(:title => ['Кровавая Мэри','Джунгли','Болото','Лазурь','Зелёное яблоко']),
    materials: Material.where(:name => ['Стандартный','Берёза','Дуб','Ясень','Тополь','Пальма','Тёмное дерево','Тёмная материя']),
    sizes: Size.where(:size => ['1x2','2x3','3x4','4x3','5x3','5x4','10x10']))
Product.create!(
    title: 'Стул деревянный точеный',
    :image => File.new("#{Rails.root}/app/assets/images/15.jpg"),
    price:3000,
    hit:true,
    categories: Category.where(:category_name => 'Стулья'),
    colors: Color.where(:title => ['Кровавая Мэри','Джунгли','Болото','Лазурь','Зелёное яблоко']),
    materials: Material.where(:name => ['Стандартный','Берёза','Дуб','Ясень','Тополь','Пальма','Тёмное дерево','Тёмная материя']),
    sizes: Size.where(:size => ['1x2','2x3','3x4','4x3','5x3','5x4','10x10']))



Product.create!(
    title: 'Телефонка',
    :image => File.new("#{Rails.root}/app/assets/images/16.jpg"),
    price:3000,
    categories: Category.where(:category_name => 'Тумбы'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']),
    materials: Material.where(:name => ['Стандартный','Берёза','Дуб','Ясень','Тополь','Пальма','Тёмное дерево','Тёмная материя']),
    sizes: Size.where(:size => ['1x2','2x3','3x4','4x3','5x3','5x4','10x10']))
Product.create!(
    title: 'Тумба для обуви большая',
    :image => File.new("#{Rails.root}/app/assets/images/17.jpg"),
    price:3000,
    hit:true,
    categories: Category.where(:category_name => 'Тумбы'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']),
    materials: Material.where(:name => ['Стандартный','Берёза','Дуб','Ясень','Тополь','Пальма','Тёмное дерево','Тёмная материя']),
    sizes: Size.where(:size => ['1x2','2x3','3x4','4x3','5x3','5x4','10x10']))
Product.create!(
    title: 'Тумба для обуви большая закрытая',
    :image => File.new("#{Rails.root}/app/assets/images/18.jpg"),
    price:3000,
    categories: Category.where(:category_name => 'Тумбы'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']),
    materials: Material.where(:name => ['Стандартный','Берёза','Дуб','Ясень','Тополь','Пальма','Тёмное дерево','Тёмная материя']),
    sizes: Size.where(:size => ['1x2','2x3','3x4','4x3','5x3','5x4','10x10']))
Product.create!(
    title: 'Тумба Классика',
    :image => File.new("#{Rails.root}/app/assets/images/19.jpg"),
    price:3000,
    categories: Category.where(:category_name => 'Тумбы'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']),
    materials: Material.where(:name => ['Стандартный','Берёза','Дуб','Ясень','Тополь','Пальма','Тёмное дерево','Тёмная материя']),
    sizes: Size.where(:size => ['1x2','2x3','3x4','4x3','5x3','5x4','10x10']))
Product.create!(
    title: 'Тумба ТВ классика',
    :image => File.new("#{Rails.root}/app/assets/images/20.jpg"),
    price:3000,
    hit:true,
    categories: Category.where(:category_name => 'Тумбы'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']),
    materials: Material.where(:name => ['Стандартный','Берёза','Дуб','Ясень','Тополь','Пальма','Тёмное дерево','Тёмная материя']),
    sizes: Size.where(:size => ['1x2','2x3','3x4','4x3','5x3','5x4','10x10']))


Product.create!(
    title: 'Классика',
    :image => File.new("#{Rails.root}/app/assets/images/21.jpg"),
    price:3000,
    categories: Category.where(:category_name => 'Комоды'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']),
    materials: Material.where(:name => ['Стандартный','Берёза','Дуб','Ясень','Тополь','Пальма','Тёмное дерево','Тёмная материя']),
    sizes: Size.where(:size => ['1x2','2x3','3x4','4x3','5x3','5x4','10x10']))
Product.create!(
    title: 'Фараон с зеркалом',
    :image => File.new("#{Rails.root}/app/assets/images/22.jpg"),
    price:3000,
    hit:true,
    categories: Category.where(:category_name => 'Комоды'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']),
    materials: Material.where(:name => ['Стандартный','Берёза','Дуб','Ясень','Тополь','Пальма','Тёмное дерево','Тёмная материя']),
    sizes: Size.where(:size => ['1x2','2x3','3x4','4x3','5x3','5x4','10x10']))
Product.create!(
    title: 'Новый',
    :image => File.new("#{Rails.root}/app/assets/images/23.jpg"),
    price:3000,
    categories: Category.where(:category_name => 'Комоды'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']),
    materials: Material.where(:name => ['Стандартный','Берёза','Дуб','Ясень','Тополь','Пальма','Тёмное дерево','Тёмная материя']),
    sizes: Size.where(:size => ['1x2','2x3','3x4','4x3','5x3','5x4','10x10']))
Product.create!(
    title: 'Стиль',
    :image => File.new("#{Rails.root}/app/assets/images/24.jpg"),
    price:3000,
    categories: Category.where(:category_name => 'Комоды'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']),
    materials: Material.where(:name => ['Стандартный','Берёза','Дуб','Ясень','Тополь','Пальма','Тёмное дерево','Тёмная материя']),
    sizes: Size.where(:size => ['1x2','2x3','3x4','4x3','5x3','5x4','10x10']))
Product.create!(
    title: 'Обувница',
    :image => File.new("#{Rails.root}/app/assets/images/25.jpg"),
    price:3000,
    categories: Category.where(:category_name => 'Комоды'),
    colors: Color.where(:title => ['Клубничная каша','Зловещий','Космос','Режущий','Пустыня']),
    materials: Material.where(:name => ['Стандартный','Берёза','Дуб','Ясень','Тополь','Пальма','Тёмное дерево','Тёмная материя']),
    sizes: Size.where(:size => ['1x2','2x3','3x4','4x3','5x3','5x4','10x10']))
=end

