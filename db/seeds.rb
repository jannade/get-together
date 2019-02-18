Space.destroy_all
Booking.destroy_all
User.destroy_all

puts 'Creating users...'
janna = User.create(name: "Janna", email: "janna@email.com", password: "password")
ashwin = User.create(name: "ashwin", email: "ashwin@email.com", password: "password")
sonia = User.create(name: "sonia", email: "sonia@email.com", password: "password")
puts "Users has been created."

puts 'Creating spaces...'
url = "http://static1.squarespace.com/static/5424db81e4b0d9410165ff00/54506bc3e4b0c5f11fd42a03/545feb7ee4b0a81640041257/1443556759058/HELEN-MILLS-Event-Space.jpg?format=1500w"
balispace = Space.new(name: "Bali Space", location: "Canggu, Bali, Indonesia", price: 100, category: "Family", user: janna)
balispace.remote_photo_url = url
balispace.save

phukhetspace = Space.create(name: "Phuket Space", location: "Chang wat, Phuket, Thailand", price: 525, category: "Birthday", user: ashwin)
phukhetspace.remote_photo_url = url
phukhetspace.save

berawaspace = Space.create(name: "New Space", location: "Berawa, Bali, Indonesia", price: 890, category: "Barbeque", user: sonia, )
berawaspace.remote_photo_url = url
berawaspace.save

bangkokspace = Space.create(name: "Bangkok cozy livingroom", location: "Bangkok, Thailand", price: 500, category: "Dinner party", user: janna)
bangkokspace.remote_photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHDGxrFVPZB-yzOx0UKbbNcZz9h6cpeEHtSzPSCJaRXn0vInIK"
bangkokspace.save

jakartaspace = Space.create(name: "Jakarta rooftop", location: "Jakarta, Indonesia", price: 400, category: "Cocktail party", user: sonia )
jakartaspace.remote_photo_url = "https://storage.googleapis.com/tempatwisataunik/2017/11/b6a12554-hause-rooftop-300x220.png"
jakartaspace.save

ubudspace = Space.create(name: "Ubud house with garden", location: "Ubud, Bali, Indonesia", price: 600, category: "Garden party", user: ashwin)
ubudspace.remote_photo_url = "http://www.thevillaguide.com/Upload/Villa/gallery/F/URID18186485-BukitNaga-Ubud-Lodge-Plunge-Pool.jpg"
ubudspace.save

chiangmaispace = Space.create(name: "Chiangmai pattio", location: "Chiangmai, Thailand", price: 500, category: "Barbeque", user: janna)
chiangmaispace.remote_photo_url = "https://i.pinimg.com/originals/56/eb/3b/56eb3bef831f9875e1525faea68a771a.jpg"
chiangmaispace.save


puts 'Spaces has been created'

puts 'Creating bookings...'
booking1 = Booking.create(date: Date.new(2019,03,03), user: ashwin, space: balispace)
booking2 = Booking.create(date: Date.new(2019,05,06), user: janna, space: berawaspace)
puts 'Booking created.'




