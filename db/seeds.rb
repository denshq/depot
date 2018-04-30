# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
# . . .
Product.create(
  title: 'Corsair CX750 v2 80+ Bronze 750 Watt',
  description: '750 Watt, ATX, активныйPFC
    8x SATA, 8x Molex
    2x PCIe 8-конактн., 2x PCIe 6-конактн.
    активныйэл. кулер, 1x 120 mm Вентилятор
    80 PLUS Bronze сертификат
    Маркировка и укладка кабелей',
  image_url: 'corsair_cx750v2.jpg',
  price: 73.94)
# . . .
Product.create(
  title: 'be quiet! Power Zone 1000 Watt',
  description: '1000 Watt, ATX, активныйPFC
    10x SATA, 6x Molex
    6x PCIe 8-конактн.
    активныйэл. кулер, 1x 135 mm Вентилятор
    80 PLUS Bronze сертификат
    Маркировка и укладка кабелей',
  image_url: 'bq_power_zone1000.jpg',
  price: 136.13)
# . . .
Product.create(
  title: 'Corsair HX850i 850 Watt',
  description: '12x SATA, 12x Molex
    6x PCIe 8-конактн., 6x PCIe 6-конактн.
    активныйэл. кулер, 1x 140 mm Вентилятор
    80 PLUS Platinum сертификат
    Маркировка и укладка кабелей',
  image_url: 'corsair_hx850i.jpg',
  price: 138.65)