# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'clearing database'
Food.destroy_all

puts 'generating Fav Foods'

30.times do
  Food.create(
    name: Faker::Food.dish,
    cuisine: Faker::Food.ethnic_category,
    description: Faker::Food.description,

    )
end

puts 'Enjoy your meal!'
