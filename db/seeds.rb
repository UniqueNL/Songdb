# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

song1 = Song.create( {name: "Thriller" })
song2 = Song.create( {name: "Billie Jean" })
song3 = Song.create( {name: "Black and White" })
song4 = Song.create( {name: "Elevation" })
song5 = Song.create( {name: "One" })
song6 = Song.create( {name: "Beautiful Day" })
song7 = Song.create( {name: "Radioactive"})
song8 = Song.create( {name: "Demons"})
song9 = Song.create( {name: "On Top Of The World"})
song10 = Song.create( {name: "Viva La Vida"})
song11 = Song.create( {name: "Clocks"})
song12 = Song.create( {name: "Paradise"})

artist1 = Artist.create({name: "Michael Jackson", image: "http://res.cloudinary.com/unique/image/upload/c_scale,w_200/v1477240582/michaeljackson_hj4eyq.jpg" })
artist2 = Artist.create({name: "U2", image: "http://res.cloudinary.com/unique/image/upload/c_scale,w_200/v1477240585/u2_pmss1i.jpg"})
artist3 = Artist.create({name: "Imagine Dragons", image: "http://res.cloudinary.com/unique/image/upload/c_scale,w_200/v1477240579/imaginedragons_pv9bik.jpg" })
artist4 = Artist.create({name: "Coldplay", image: "http://res.cloudinary.com/unique/image/upload/c_scale,w_200/v1477240577/coldplay_kcnzvz.jpg"})

artist1.songs << [song1, song2, song3]
artist1.save

artist2.songs << [song4, song5, song6]
artist2.save

artist3.songs << [song7, song8, song9]
artist3.save

artist4.songs << [song10, song11, song12]
artist4.save
