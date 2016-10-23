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

artist1 = Artist.create ( {name: "Michael Jackson" })
artist2 = Artist.create ( {name: "U2" })

artist1.songs << [song1]
artist1.songs << [song2]
artist1.songs << [song3]
artist1.save

artist2.songs << [song4]
artist2.songs << [song5]
artist2.songs << [song6]
artist2.save
