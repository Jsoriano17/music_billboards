# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


5.times do |i|

    art = Artist.create(name: Faker::Music::RockBand.name)
    billboard = Billboard.create(name: "Billboard #{i}")
    song = art.songs.create(name:Faker::Music.album)

  end
  
  songs = Song.all.where(billboard_id: nil)
  
