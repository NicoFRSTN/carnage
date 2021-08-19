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

ADRESSES = [
  '20 rue des capucins,  Lyon',
  '48 rue de la madeleine, Lyon'
]

user = User.create!(
  email: "admin@hotmail.com",
  password: "adminadmin"
)

20.times do
  Car.create!(
    photo_url: Faker::LoremFlickr.image(search_terms: ['supercar']),
    brand: Faker::Vehicle.make,
    model: Faker::Vehicle.model,
    fuel: Car::AUTHORIZED_FUELS.sample,
    gearbox: Car::AUTHORIZED_GEARBOXES.sample,
    price: Car::Commerce.price,
    address: ADRESSES.sample,
    owner: user
  )
end
