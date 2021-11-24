# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# puts 'Delete db'
# Flat.destroy_all
puts 'Seeding liao 🌱'
# @flat = Flat.create!(
#   name: 'Light & Spacious Garden Flat London',
#   address: '10 Clifton Gardens London W9 1DT',
#   description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
#   price_per_night: 75,
#   number_of_guests: 3
# )
# puts "#{@flat.name} created"
8.times do
  @flat = Flat.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    description: Faker::TvShows::GameOfThrones.quote,
    price_per_night: rand(50..250),
    number_of_guests: rand(2..5),
  )
  puts "#{@flat.name} created"
end

puts 'Seeding Done 👍'
