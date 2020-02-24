# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
art1 = Artist.create(name: 'Testing name')

songing = art1.songs.create(name: 'test')
songing = art1.songs.create(name: 'test 2')
songing = art1.songs.create(name: 'test 3')

art2 = Artist.create(name: 'Testing name 2')

songing2 = art2.songs.create(name: 'test')
songing2 = art2.songs.create(name: 'test 2')
songing2 = art2.songs.create(name: 'test 3')

art3 = Artist.create(name: 'Testing name 3')

songing3 = art3.songs.create(name: 'test')
songing3 = art3.songs.create(name: 'test 2')
songing3 = art3.songs.create(name: 'test 3')