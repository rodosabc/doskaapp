# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#...




Cart.delete_all
LineItem.delete_all
Order.delete_all


Product.delete_all


Color.delete_all
Material.delete_all
Size.delete_all
Category.delete_all
Category.create!(category_name: 'Кровати')
Category.create!(category_name: 'Основания')
Category.create!(category_name: 'Матрасы')
Category.create!(category_name: 'Шкафы')
Category.create!(category_name: 'Комоды')
Category.create!(category_name: 'Тумбы')
Category.create!(category_name: 'Столы')
Category.create!(category_name: 'Стулья')
Category.create!(category_name: 'Табуретки')
Category.create!(category_name: 'Банкетки')

Color.create!(:title =>"Прозрачный лак",
              :image =>File.new("#{Rails.root}/app/assets/images/colors/Prozrachnyj lak.jpg"))
Color.create!(:title =>"Классический орех-1",
              :image =>File.new("#{Rails.root}/app/assets/images/colors/Klassicheskij oreh-1.jpg"))
Color.create!(:title =>"Классический орех-2",
              :image =>File.new("#{Rails.root}/app/assets/images/colors/Klassicheskij oreh-2.jpg"))
Color.create!(:title =>"Классический орех-3",
              :image =>File.new("#{Rails.root}/app/assets/images/colors/Klassicheskij oreh-3.jpg"))
Color.create!(:title =>"Старый орех-1",
              :image =>File.new("#{Rails.root}/app/assets/images/colors/Staryj oreh-1.jpg"))
Color.create!(:title =>"Старый орех-2",
              :image =>File.new("#{Rails.root}/app/assets/images/colors/Staryj oreh-2.jpg"))
Color.create!(:title =>"Старый орех-3",
              :image =>File.new("#{Rails.root}/app/assets/images/colors/Staryj oreh-3.jpg"))
Color.create!(:title =>"Могано-1",
              :image =>File.new("#{Rails.root}/app/assets/images/colors/Mogano-1.jpg"))
Color.create!(:title =>"Могано-2",
              :image =>File.new("#{Rails.root}/app/assets/images/colors/Mogano-2.jpg"))
Color.create!(:title =>"Могано-3",
              :image =>File.new("#{Rails.root}/app/assets/images/colors/Mogano-3.jpg"))
Color.create!(:title =>"Венге-1",
              :image =>File.new("#{Rails.root}/app/assets/images/colors/Venge-1.jpg"))
Color.create!(:title =>"Венге-2",
              :image =>File.new("#{Rails.root}/app/assets/images/colors/Venge-2.jpg"))
Color.create!(:title =>"Венге-3",
              :image =>File.new("#{Rails.root}/app/assets/images/colors/Venge-3.jpg"))
Color.create!(:title =>"Махагон",
              :image =>File.new("#{Rails.root}/app/assets/images/colors/Mahagon.jpg"))
Color.create!(:title =>"Грецкий орех",
              :image =>File.new("#{Rails.root}/app/assets/images/colors/Greckij oreh.jpg"))
Color.create!(:title =>"Черный",
              :image =>File.new("#{Rails.root}/app/assets/images/colors/Chernyj.jpg"))
Color.create!(:title =>"Белый",
              :image =>File.new("#{Rails.root}/app/assets/images/colors/Belyj.jpg"))
Color.create!(:title =>"Беленый дуб",
              :image =>File.new("#{Rails.root}/app/assets/images/colors/Belenyj dub.jpg"))
Color.create!(:title =>"Слоновая кость",
              :image =>File.new("#{Rails.root}/app/assets/images/colors/Slonovaya kost.jpg"))



#КРОВАТИ
json = ActiveSupport::JSON.decode(File.read('db/krovati.json'))
json.each do |a|
  Product.create(:title => a['Название'],
                  :sizes => Size.create(a['Размеры']),
                  :materials => Material.create(a['Материалы']),
                  :price => a['price'].to_i,
                  :colors => Color.where(title:  [a["Цвета"].map {|b| b["title"]}]),
                  :image => File.new("#{Rails.root}/app/assets/images/foto2/#{a['image']}"),
                  categories: Category.where(:category_name => 'Кровати'))
end





# ОСНОВАНИЯ
Product.create!(:title => 'Ортопедическое основание',
                :price => 3080,
                :sizes => Size.create([{size: '90x200',price: 3080},
                                       {size: '120x200',price: 3410},
                                       {size: '140x200',price: 3740},
                                       {size: '160x200',price: 3850},
                                       {size: '180x200',price: 4400},
                                       {size: '200x200',price: 4730}]),
                :materials => Material.create([{name:'Стандартный',overpay:0}]),
                :colors => Color.where(title: ['Белый']),
                :image => File.new("#{Rails.root}/app/assets/images/foto2/123.jpg"),
                categories: Category.where(:category_name => 'Основания'))

#МАТРАСЫ

json = ActiveSupport::JSON.decode(File.read('db/matraci.json'))
json.each do |a|

  Product.create!(:title => a['Название'],
                  :sizes => Size.create(a['Размеры']),
                  :materials => Material.create(a['Материалы']),
                  :description => a['Детали'],
                  :price => a['price'].to_i,
                  :colors => Color.where(title:  [a["Цвета"].map {|b| b["title"]}]),
                  :image => File.new("#{Rails.root}/app/assets/images/foto2/#{a['image']}"),
                  categories: Category.where(:category_name => 'Матрасы'))
end

#НАМАТРАСНИКИ

json = ActiveSupport::JSON.decode(File.read('db/namatrasniki.json'))
json.each do |a|

  Product.create!(:title => a['Название'],
                  :sizes => Size.create(a['Размеры']),
                  :materials => Material.create(a['Материалы']),
                  :price => a['price'].to_i,
                  :colors => Color.where(title:  [a["Цвета"].map {|b| b["title"]}]),
                  :image => File.new("#{Rails.root}/app/assets/images/foto2/#{a['image']}"),
                  categories: Category.where(:category_name => 'Матрасы'))
end




#ШКАФЫ
json = ActiveSupport::JSON.decode(File.read('db/shkafi.json'))
json.each do |a|

  Product.create!(:title => a['Название'],
                  :sizes => Size.create(a['Размеры']),
                  :materials => Material.create(a['Материалы']),
                  :price => a['price'].to_i,
                  :colors => Color.where(title:  [a["Цвета"].map {|b| b["title"]}]),
                  :image => File.new("#{Rails.root}/app/assets/images/foto2/#{a['image']}"),
                  categories: Category.where(:category_name => 'Шкафы'))
end



#КОМОДЫ
json = ActiveSupport::JSON.decode(File.read('db/komodi.json'))
json.each do |a|

  Product.create!(:title => a['Название'],
                  :sizes => Size.create(a['Размеры']),
                  :materials => Material.create(a['Материалы']),
                  :price => a['price'].to_i,
                  :colors => Color.where(title:  [a["Цвета"].map {|b| b["title"]}]),
                  :image => File.new("#{Rails.root}/app/assets/images/foto2/#{a['image']}"),
                  categories: Category.where(:category_name => 'Комоды'))
end



#ТУМБЫ
json = ActiveSupport::JSON.decode(File.read('db/tumbi.json'))
json.each do |a|

  Product.create!(:title => a['Название'],
                  :sizes => Size.create(a['Размеры']),
                  :materials => Material.create(a['Материалы']),
                  :price => a['price'].to_i,
                  :colors => Color.where(title:  [a["Цвета"].map {|b| b["title"]}]),
                  :image => File.new("#{Rails.root}/app/assets/images/foto2/#{a['image']}"),
                  categories: Category.where(:category_name => 'Тумбы'))
end




#СТОЛЫ
json = ActiveSupport::JSON.decode(File.read('db/stoli.json'))
json.each do |a|

  Product.create!(:title => a['Название'],
                  :sizes => Size.create(a['Размеры']),
                  :materials => Material.create(a['Материалы']),
                  :price => a['price'].to_i,
                  :colors => Color.where(title:  [a["Цвета"].map {|b| b["title"]}]),
                  :image => File.new("#{Rails.root}/app/assets/images/foto2/#{a['image']}"),
                  categories: Category.where(:category_name => 'Столы'))
end





#СТУЛЬЯ
json = ActiveSupport::JSON.decode(File.read('db/stulya.json'))
json.each do |a|

  Product.create!(:title => a['Название'],
                  :price => 0,
                  :sizes => Size.create(a['Размеры']),
                  :materials => Material.create(a['Материалы']),
                  :price => a['price'].to_i,
                  :colors => Color.where(title:  [a["Цвета"].map {|b| b["title"]}]),
                  :image => File.new("#{Rails.root}/app/assets/images/foto2/#{a['image']}"),
                  categories: Category.where(:category_name => 'Стулья'))
end


#ТАБУРЕТКИ
json = ActiveSupport::JSON.decode(File.read('db/tabureti.json'))
json.each do |a|
  Product.create!(:title => a['Название'],
                  :sizes => Size.create(a['Размеры']),
                  :materials => Material.create(a['Материалы']),
                  :price => a['price'].to_i,
                  :colors => Color.where(title:  [a["Цвета"].map {|b| b["title"]}]),
                  :image => File.new("#{Rails.root}/app/assets/images/foto2/#{a['image']}"),
                  categories: Category.where(:category_name => 'Табуретки'))
end

#БАНКЕТКИ
json = ActiveSupport::JSON.decode(File.read('db/banketki.json'))
json.each do |a|
  Product.create!(:title => a['Название'],
                  :sizes => Size.create(a['Размеры']),
                  :materials => Material.create(a['Материалы']),
                  :price => a['price'].to_i,
                  :colors => Color.where(title:  [a["Цвета"].map {|b| b["title"]}]),
                  :image => File.new("#{Rails.root}/app/assets/images/foto2/#{a['image']}"),
                  categories: Category.where(:category_name => 'Банкетки'))
end


