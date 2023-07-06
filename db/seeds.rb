# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Destroying restaurants...'
Restaurant.destroy_all
puts 'Done!'

puts 'Creating 10 restaurants...'
10.times do
  res = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: %w[chinese italian japanese french belgian].sample,
    phone_number: Faker::PhoneNumber.cell_phone
  )
  puts "#{res.name} created."
end
puts 'Done!'
