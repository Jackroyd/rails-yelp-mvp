# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Cleaning da database mon...'
sleep(0.1)
puts '.'
sleep(0.1)
puts '.'
sleep(0.1)
puts '.'
Restaurant.destroy_all
puts 'Cleaned'

puts 'Creating da restaurants...'
100.times do
  rest_name = Faker::Restaurant.name
  rest_address = Faker::Address.full_address
  rest_phone = Faker::PhoneNumber.cell_phone_in_e164
  rest_category = ["chinese", "italian", "japanese", "french", "belgian"].sample
  restaurant = Restaurant.create(name: rest_name, address: rest_address, phone_number: rest_phone, category: rest_category)
  puts "#{restaurant.id} created"
end
