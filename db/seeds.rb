# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Car.destroy_all
User.destroy_all

user = User.create!(
  email: "admin@hotmail.com",
  password: "adminadmin"
)

Car.create(photo_url: "https://www.turbo.fr/sites/default/files/slideshow/slides/2020-07/5f214d2da4730.jpg",
           brand: "Mercedes",
           model: "Amg",
           fuel: "Gasoline",
           gearbox: "Automanual",
           price: "90€-100€",
           address: "Paris",
           owner: user)

Car.create(photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRU5nAkmQi2LIvKaz8MfjDOts37fYN7DGEyyw&usqp=CAU",
           brand: "Audi",
           model: "A7",
           fuel: "Diesel",
           gearbox: "Automatic",
           price: "90€-100€",
           address: "Lyon",
           owner: user)

Car.create(photo_url: "https://s1.1zoom.me/big0/651/BMW_2018_M5_V8_F90_M5_Competition_Front_Grey_594615_1280x720.jpg",
           brand: "BMW",
           model: "M5",
           fuel: "Electric",
           gearbox: "Automatic",
           price: "80€-90€",
           address: "Grenoble",
           owner: user)

Car.create(photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX45LfnZr-L2enRTDCCDM-xAB6KrFZIL-Glg&usqp=CAU",
           brand: "Volkswagen",
           model: "Golf 7R",
           fuel: "Gasoline",
           gearbox: "Automatic",
           price: "60€-70€",
           address: "Marseille",
           owner: user)

Car.create(photo_url: "https://actu-moteurs.com/wp-content/uploads/2021/03/maxresdefault-3.jpeg",
           brand: "Audi",
           model: "R8",
           fuel: "Diesel",
           gearbox: "Automatic",
           price: "50€-60€",
           address: "Bordeaux",
           owner: user)

Car.create(photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxM6xwuVO_KnD8OK1cvJ-0s1esw5EUGjf8nA&usqp=CAU",
           brand: "Porsche",
           model: "911",
           fuel: "Diesel",
           gearbox: "Automanual",
           price: "40€-50€",
           address: "Saint-Étienne",
           owner: user)

Car.create(photo_url: "https://cdn.motor1.com/images/mgl/WO7pq/s3/2021-jaguar-xf-front.jpg",
           brand: "Jaguar",
           model: "XF",
           fuel: "Diesel",
           gearbox: "Manual",
           price: "70€-80€",
           address: "Paris",
           owner: user)

Car.create(photo_url: "https://www.turbo.fr/sites/default/files/2018-06/logo_690x405_turbo_peugeot_508_gt_line.png",
           brand: "Peugeot",
           model: "508",
           fuel: "Diesel",
           gearbox: "Manual",
           price: "20€-30€",
           address: "Nice",
           owner: user)

Car.create(photo_url: "https://www.turbo.fr/sites/default/files/2020-09/0100%20Bentley%20Continental%20GT%20Mulliner.jpg",
           brand: "Bentley",
           model: "Continental GT",
           fuel: "Diesel",
           gearbox: "Manual",
           price: "100€",
           address: "Nice",
           owner: user)

Car.create(photo_url: "https://www.automobile-magazine.fr/asset/cms/166918/config/115735/21231701-2019-essais-presse-nouvelle-renault-zoe-en-sardaigne.jpg",
           brand: "Renault",
           model: "Zoé",
           fuel: "Diesel",
           gearbox: "Manual",
           price: "10€-20€",
           address: "Lyon",
           owner: user)

Car.create(photo_url: "https://www.auto-infos.fr/IMG/arton10832.jpg",
           brand: "Citroën",
           model: "Cactus",
           fuel: "Diesel",
           gearbox: "Manual",
           price: "20€-30€",
           address: "Nice",
           owner: user)

Car.create(photo_url: "https://www.turbo.fr/sites/default/files/2020-04/1_essai_opel_corsa_e_2020.jpg",
           brand: "Opel",
           model: "Corsa",
           fuel: "Gasoline",
           gearbox: "Manual",
           price: "10€-20€",
           address: "Paris",
           owner: user)
