# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'clearing restaurants database'
Restaurant.destroy_all

10.times do
  puts 'creating restaurant'
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    category: %w[chinese italian japanese french belgian].sample
  )
  puts "created restaurant #{restaurant.id}"
end
