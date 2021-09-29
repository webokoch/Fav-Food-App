# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

require "open-uri"

puts 'clearing database'
Food.destroy_all
User.destroy_all

puts 'generating Fav Foods'

  user1 = User.new(email: "user1@example.com", password: "password")
  user1.save

  user1 = User.new(email: "user2@example.com", password: "123456")
  user1.save

  f1 =Food.new(
    name: "Sushi",
    cuisine: "Japanese",
    description: "Lot's of Rice and Fish"
    )
  file1 = URI.open('https://res.cloudinary.com/dxipt5061/image/upload/v1631215176/food-placeholder2_h5y8b8.jpg')
  f1.photo.attach(io: file1, filename: 'food1.jpg', content_type: 'image/jpg')
  f1.save

  f2 =Food.new(
    name: "Burger",
    cuisine: "American",
    description: "Meat in a Bun"
    )
  file2 = URI.open('https://res.cloudinary.com/dxipt5061/image/upload/v1631215176/food-placeholder6_s6gnbu.jpg')
  f2.photo.attach(io: file2, filename: 'food2.jpg', content_type: 'image/jpg')
  f2.save

  f3 =Food.new(
    name: "Pizza",
    cuisine: "Italian",
    description: "Tastes like Holiday"
    )
  file3 = URI.open('https://res.cloudinary.com/dxipt5061/image/upload/v1631215176/food-placeholder1_yfpfzm.jpg')
  f3.photo.attach(io: file3, filename: 'food3.jpg', content_type: 'image/jpg')
  f3.save

  f4 =Food.new(
    name: "Spaghetti",
    cuisine: "Italian",
    description: "Noodels th Italian Way"
    )
  file4 = URI.open('https://res.cloudinary.com/dxipt5061/image/upload/v1631215176/food-placeholder3_nzefke.jpg')
  f4.photo.attach(io: file4, filename: 'food4.jpg', content_type: 'image/jpg')
  f4.save


puts 'Enjoy your meal!'



