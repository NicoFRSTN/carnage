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

20.times do
  Car.create!(
    brand: Faker::Vehicle.make,
    model: Faker::Vehicle.model,
    fuel: Faker::Vehicle.fuel_type,
    gearbox: Faker::Vehicle.transmission,
    price: Faker::Commerce.price,
    owner: user
  )
end
