Booking.destroy_all
Space.destroy_all
User.destroy_all

puts 'Creating users...'
janna = User.create(name: "Janna", email: "janna@email.com", password: "password")
ashwin = User.create(name: "ashwin", email: "ashwin@email.com", password: "password")
sonia = User.create(name: "sonia", email: "sonia@email.com", password: "password")
puts "Users has been created."

puts 'Creating spaces...'

bangkokspace6 = Space.create(name: "Antique dinner party in Bangkok", location: "Ekkamai, Bangkok, Thailand", price: 700, category: "Dinner party", user: janna )
bangkokspace6.remote_photo_url = "https://images.unsplash.com/photo-1466027785809-90d27831b9bd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2104&q=80"
bangkokspace6.save

bangkokspace4 = Space.create(name: "Golden bar in Bangkok", location: "Bangkok, Thailand", price: 900, category: "Dinner party", user: janna)
bangkokspace4.remote_photo_url = "https://d2e5ushqwiltxm.cloudfront.net/wp-content/uploads/sites/95/2016/12/03054716/M1C0723-585x390.jpg"
bangkokspace4.save

chiangmaispace = Space.create(name: "Chiangmai pattio", location: "Chiangmai, Thailand", price: 500, category: "Barbeque", user: janna)
chiangmaispace.remote_photo_url = "https://i.pinimg.com/originals/56/eb/3b/56eb3bef831f9875e1525faea68a771a.jpg"
chiangmaispace.save

balispace = Space.new(name: "Bali Space", location: "Canggu, Bali, Indonesia", price: 100, category: "Family", user: janna)
balispace.remote_photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmYt0hBll087qMiA13flPkeUMWpLWXJ6a-dGqsxEN8CTfA7jwltQ"
balispace.save

bangkokspace = Space.create(name: "Cosy livingroom in Bangkok", location: "Thonglor, Bangkok, Thailand", price: 500, category: "Dinner party", user: janna)
bangkokspace.remote_photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHDGxrFVPZB-yzOx0UKbbNcZz9h6cpeEHtSzPSCJaRXn0vInIK"
bangkokspace.save

bangkokspace2 = Space.create(name: "Private rooftop in CBD", location: "Sathorn, Bangkok, Thailand", price: 600, category: "Dinner party", user: janna )
bangkokspace2.remote_photo_url = "https://i.pinimg.com/236x/ec/41/b2/ec41b21ba0219a451243175c6ec89bc0--bangkok-rooftops.jpg"
bangkokspace2.save

bangkokspace3 = Space.create(name: "Amazing kitchen for cooking", location: "Bangna, Bangkok, Thailand", price: 300, category: "Dinner party", user: janna)
bangkokspace3.remote_photo_url = "http://lsa.assets.s3-website-ap-southeast-1.amazonaws.com/var/lifestyleasia/storage/images/media/images/corner-kitchen/4123004-1-eng-GB/corner-kitchen.jpg"
bangkokspace3.save

bangkokspace5 = Space.create(name: "Luxury dining with private chef", location: "Sathorn, Bangkok, Thailand", price: 1000, category: "Dinner party", user: janna)
bangkokspace5.remote_photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLob-KU-v7JWygHpmrVmvQQ-GR8Zae_s-DUExAOaUDBvFe9Ghh"
bangkokspace5.save

jakartaspace = Space.create(name: "Jakarta rooftop", location: "Jakarta, Indonesia", price: 400, category: "Cocktail party", user: sonia )
jakartaspace.remote_photo_url = "https://storage.googleapis.com/tempatwisataunik/2017/11/b6a12554-hause-rooftop-300x220.png"
jakartaspace.save

ubudspace = Space.create(name: "Ubud house with garden", location: "Ubud, Bali, Indonesia", price: 600, category: "Garden party", user: ashwin)
ubudspace.remote_photo_url = "http://www.thevillaguide.com/Upload/Villa/gallery/F/URID18186485-BukitNaga-Ubud-Lodge-Plunge-Pool.jpg"
ubudspace.save

puts 'Spaces has been created'

booking1 = Booking.create(date: Date.new(2019,06,20), user: ashwin, space: bangkokspace4)
booking2 = Booking.create(date: Date.new(2019,07,28), user: ashwin, space: bangkokspace4)
booking3 = Booking.create(date: Date.new(2019,10,8), user: ashwin, space: bangkokspace4)
booking4 = Booking.create(date: Date.new(2019,12,25), user: ashwin, space: bangkokspace4)

booking5 = Booking.create(date: Date.new(2019,12,31), user: ashwin, space: chiangmaispace)





