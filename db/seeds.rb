Space.destroy_all
Booking.destroy_all

puts 'Creating spaces...'
balispace = Space.create(name: "Bali Space", location: "Canggu, Bali, Indonesia", price: 1000000, category: "Family", user: User.first)
phukhetspace = Space.create(name: "Phuket Space", location: "Chang wat, Phuket, Thailand", price: 5250000, category: "Birthday", user: User.find(2))
berawaspace = Space.create(name: "New Space", location: "Berawa, Bali, Indonesia", price: 890000, category: "Barbeque", user: User.first)
sleep 1
puts 'Created spaces...'

puts 'Creating bookings...'
booking1 = Booking.create(date: Date.new(2019,03,03), user: user.first, space: balispace)
booking2 = Booking.create(date: Date.new(2019,05,06), user: user.find(2), space: berawaspace)
sleep 1
puts 'Created bookings...'


# space11 = Space.new(name: "Best garden", location: "Bangkok", user_id: 1, price: 50, category: "pool party")
# space11.save

# space22 = Space.new(name: "Best loft", location: "Canggu", user_id: 1, price: 50, category: "Dinner party")
# space22.save

# booking11 = Booking.new(date: Date.new(2019,03,03), user_id: 2 , space: space11)
# booking11.save




