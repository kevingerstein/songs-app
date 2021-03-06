# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'ffaker'

10.times do 
  Song.create(title: FFaker::Music.song, album: FFaker::Music.album, artist: FFaker::Music.artist, year: FFaker::Vehicle.year)
end