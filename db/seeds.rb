# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Genre.create([{name: 'Metal'},{name: 'Rock'},{name: 'Pop'},{name: 'Grindcore'},
  {name: 'Brutal Death Metal'},{name: 'Bachata'}, {name: 'Reggae'}])
Artist.create([{name: 'Martin Peña', bio: 'Biografia', genre_ids: 2},
              {name: 'Claudio Scheihing', bio: 'Estresado por postgres', genre_ids: 7},
              {name: 'Marco Sfogli', bio: 'Guitarrista italiano', genre_ids: 2},
              {name: 'Jason Becker', bio: 'Guitarrista virtuoso con ALS', genre_ids: 2},
              {name: 'Animals as Leaders', bio: 'Grupo instrumental de metal progresivo', genre_ids: 2}])
Album.create([{name: 'Perpetual Burn', artist_id: Artist.find_by_name('Jason Becker').id, genre_ids: 2},
              {name: 'Weightless', artist_id: Artist.find_by_name('Animals as Leaders').id, genre_ids: 2},
              {name: 'The Madness of Many', artist_id: Artist.find_by_name('Animals as Leaders').id, genre_ids: 2},
              {name: 'The Joy of Motion', artist_id: Artist.find_by_name('Animals as Leaders').id, genre_ids: 2}])
Song.create([{name: 'An Infinite Regression', album_id: Album.find_by_name('Weightless').id, artist_id: Artist.find_by_name('Animals as Leaders').id},
  {name: 'Odessa', album_id: Album.find_by_name('Weightless').id, artist_id: Artist.find_by_name('Animals as Leaders').id},
  {name: 'Somnarium', album_id: Album.find_by_name('Weightless').id, artist_id: Artist.find_by_name('Animals as Leaders').id},
  {name: 'Earth Departure', album_id: Album.find_by_name('Weightless').id, artist_id: Artist.find_by_name('Animals as Leaders').id},
  {name: 'Isolated Incidents', album_id: Album.find_by_name('Weightless').id, artist_id: Artist.find_by_name('Animals as Leaders').id},
  {name: 'Do Not Go Gently', album_id: Album.find_by_name('Weightless').id, artist_id: Artist.find_by_name('Animals as Leaders').id},
  {name: 'New Eden', album_id: Album.find_by_name('Weightless').id, artist_id: Artist.find_by_name('Animals as Leaders').id},
  {name: 'Cylindrical Sea', album_id: Album.find_by_name('Weightless').id, artist_id: Artist.find_by_name('Animals as Leaders').id},
  {name: 'To Lead You to an Overwhelming Question', album_id: Album.find_by_name('Weightless').id, artist_id: Artist.find_by_name('Animals as Leaders').id},
  {name: 'Weightless', album_id: Album.find_by_name('Weightless').id, artist_id: Artist.find_by_name('Animals as Leaders').id},
  {name: 'David', album_id: Album.find_by_name('Weightless').id, artist_id: Artist.find_by_name('Animals as Leaders').id}])
