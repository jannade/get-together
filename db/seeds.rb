Space.destroy_all
Booking.destroy_all

puts 'Creating spaces...'
url = "http://static1.squarespace.com/static/5424db81e4b0d9410165ff00/54506bc3e4b0c5f11fd42a03/545feb7ee4b0a81640041257/1443556759058/HELEN-MILLS-Event-Space.jpg?format=1500w"
balispace = Space.new(name: "Bali Space", location: "Canggu, Bali, Indonesia", price: 1000000, category: "Family", user: User.first)
balispace.remote_photo_url = url
balispace.save
# phukhetspace = Space.create(name: "Phuket Space", location: "Chang wat, Phuket, Thailand", price: 5250000, category: "Birthday", user: User.first)
# berawaspace = Space.create(name: "New Space", location: "Berawa, Bali, Indonesia", price: 890000, category: "Barbeque", user: User.first)
puts 'Created spaces...'

puts 'Creating bookings...'
booking1 = Booking.create(date: Date.new(2019,03,03), user: User.first, space: balispace)
booking2 = Booking.create(date: Date.new(2019,05,06), user: User.first, space: berawaspace)
puts 'Created bookings...'




