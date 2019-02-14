# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


space11 = Space.new(name: "Best garden", location: "Bangkok", user_id: 1, price: 50, category: "pool party")
space11.save

space22 = Space.new(name: "Best loft", location: "Canggu", user_id: 1, price: 50, category: "Dinner party")
space22.save

booking11 = Booking.new(date: Date.new(2019,03,03), user_id: 2 , space: space11)
booking11.save




