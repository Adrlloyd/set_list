# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@prince = Artist.create!(name: 'Prince')
@song1 = @prince.songs.create!(title: 'Purple Rain', length: 10, play_count: 4)
@song2 = @prince.songs.create!(title: 'song2', length: 10, play_count: 4)