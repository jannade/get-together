Space.destroy_all
Booking.destroy_all
User.destroy_all

puts 'Creating users...'
janna = User.create(name: "Janna", email: "janna@email.com", password: "password")
ashwin = User.create(name: "ashwin", email: "ashwin@email.com", password: "password")
sonia = User.create(name: "sonia", email: "sonia@email.com", password: "password")
puts "Users has been created."

puts 'Creating spaces...'
urls = ["https://picsum.photos/200/300?image=1065", "https://picsum.photos/200/300?image=1047", "https://picsum.photos/200/300?image=1040", "https://picsum.photos/200/300?image=979"]
names = ["Canggu Space", "Berawa Space", "Phukhet Space", "Kuta Space", "Sanur Space", "Nusa Dua Space"]
locations = ["Canggu", "Berawa", "Phukhet", "Kuta", "Sanur", "Nusa Dua"]

12.times do
  space = Space.new(name: names.sample, location: locations.sample, price: 25000, category: "Family", user: janna)
  space.remote_photo_url = urls.sample
  space.save
end

puts 'Spaces has been created.'

puts 'Creating bookings...'
booking1 = Booking.create(date: Date.new(2019,03,03), user: ashwin, space: Space.find(1))
booking2 = Booking.create(date: Date.new(2019,05,06), user: janna, space: Space.find(2))
puts 'Booking created.'




