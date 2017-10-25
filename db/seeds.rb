# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Genre.create([{name: 'Metal'},{name: 'Rock'},{name: 'Pop'},{name: 'Grindcore'},
  {name: 'Brutal Death Metal'},{name: 'Bachata'}, {name: 'Reggae'},{name: 'Jazz'}])
Artist.create([{name: 'Martin Peña', bio: 'Biografia', genre_ids: 2},
              {name: 'Claudio Scheihing', bio: 'Estresado por postgres', genre_ids: 7},
              {name: 'Marco Sfogli', bio: 'Guitarrista italiano', genre_ids: 2},
              {name: 'Jason Becker', bio: 'Guitarrista virtuoso con ALS', genre_ids: 2},
              {name: 'Animals as Leaders', bio: 'Grupo instrumental de metal progresivo', genre_ids: 2},
              {name: 'Audioslave', bio: 'Banda de Estados Unidos, RIP Chris Cornell', genre_ids: 2},
              {name: 'Queen', bio: 'Aguante Freddy', genre_ids: 2},
              {name: 'Snarky Puppy', bio: 'Agrupacion de Jazz Fusion', genre_ids: 8},
              {name: 'Toto', bio: 'Banda de Estados Unidos', genre_ids: 2}])
Album.create([{name: 'Perpetual Burn', artist_id: Artist.find_by_name('Jason Becker').id, genre_ids: 2},
              {name: 'Weightless', artist_id: Artist.find_by_name('Animals as Leaders').id, genre_ids: 2},
              {name: 'The Madness of Many', artist_id: Artist.find_by_name('Animals as Leaders').id, genre_ids: 2},
              {name: 'The Joy of Motion', artist_id: Artist.find_by_name('Animals as Leaders').id, genre_ids: 2},
              {name: 'Revelations', artist_id: Artist.find_by_name('Audioslave').id, genre_ids: 2}
              {name: 'A Night at the Opera', artist_id: Artist.find_by_name('Queen').id, genre_ids: 2}
              {name: 'We like it here', artist_id: Artist.find_by_name('Snarky Puppy').id, genre_ids: 8}
              {name: 'Fahrenheit', artist_id: Artist.find_by_name('Toto').id, genre_ids: 2}])
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
  {name: 'Revelations', album_id: Album.find_by_name('Revelations').id, artist_id: Artist.find_by_name('Audioslave').id},
  {name: 'One and the Same', album_id: Album.find_by_name('Revelations').id, artist_id: Artist.find_by_name('Audioslave').id},
  {name: 'Sound of a Gun', album_id: Album.find_by_name('Revelations').id, artist_id: Artist.find_by_name('Audioslave').id},
  {name: 'Until We Fall', album_id: Album.find_by_name('Revelations').id, artist_id: Artist.find_by_name('Audioslave').id},
  {name: 'Original Fire', album_id: Album.find_by_name('Weightless').id, artist_id: Artist.find_by_name('Audioslave').id},
  {name: 'Broken City', album_id: Album.find_by_name('Revelations').id, artist_id: Artist.find_by_name('Audioslave').id},
  {name: 'Somedays', album_id: Album.find_by_name('Revelations').id, artist_id: Artist.find_by_name('Audioslave').id},
  {name: 'Shape of Things to Come', album_id: Album.find_by_name('Revelations').id, artist_id: Artist.find_by_name('Audioslave').id},
  {name: 'Jewel of the Summertime', album_id: Album.find_by_name('Revelations').id, artist_id: Artist.find_by_name('Audioslave').id},
  {name: 'Wide Awake', album_id: Album.find_by_name('Revelations').id, artist_id: Artist.find_by_name('Audioslave').id},
  {name: 'Nothing Left to Say but Goodbye', album_id: Album.find_by_name('Revelations').id, artist_id: Artist.find_by_name('Audioslave').id},
  {name: 'Moth', album_id: Album.find_by_name('Revelations').id, artist_id: Artist.find_by_name('Audioslave').id},
  {name: 'Death on Two Legs', album_id: Album.find_by_name('A Night at the Opera').id, artist_id: Artist.find_by_name('Queen').id},
  {name: 'Lazing on a Sunday Afternoon', album_id: Album.find_by_name('A Night at the Opera').id, artist_id: Artist.find_by_name('Queen').id},
  {name: 'Im in Love With My Car', album_id: Album.find_by_name('A Night at the Opera').id, artist_id: Artist.find_by_name('Queen').id},
  {name: 'Youre my best friend', album_id: Album.find_by_name('A Night at the Opera').id, artist_id: Artist.find_by_name('Queen').id},
  {name: '39', album_id: Album.find_by_name('A Night at the Opera').id, artist_id: Artist.find_by_name('Queen').id},
  {name: 'Sweet Lady', album_id: Album.find_by_name('A Night at the Opera').id, artist_id: Artist.find_by_name('Queen').id},
  {name: 'Seaside Rendezvous', album_id: Album.find_by_name('A Night at the Opera').id, artist_id: Artist.find_by_name('Queen').id},
  {name: 'The Prophets Song', album_id: Album.find_by_name('A Night at the Opera').id, artist_id: Artist.find_by_name('Queen').id},
  {name: 'Love of My Life', album_id: Album.find_by_name('A Night at the Opera').id, artist_id: Artist.find_by_name('Queen').id},
  {name: 'Good Company', album_id: Album.find_by_name('A Night at the Opera').id, artist_id: Artist.find_by_name('Queen').id},
  {name: 'Bohemian Rhapsody', album_id: Album.find_by_name('A Night at the Opera').id, artist_id: Artist.find_by_name('Queen').id},
  {name: 'God Save the Queen', album_id: Album.find_by_name('A Night at the Opera').id, artist_id: Artist.find_by_name('Queen').id},
  {name: 'Shofukan', album_id: Album.find_by_name('We like it here').id, artist_id: Artist.find_by_name('Snarky Puppy').id},
  {name: 'What About Me', album_id: Album.find_by_name('We like it here').id, artist_id: Artist.find_by_name('Snarky Puppy').id},
  {name: 'Sleeper', album_id: Album.find_by_name('We like it here').id, artist_id: Artist.find_by_name('Snarky Puppy').id},
  {name: 'Jambone', album_id: Album.find_by_name('We like it here').id, artist_id: Artist.find_by_name('Snarky Puppy').id},
  {name: 'Kite', album_id: Album.find_by_name('We like it here').id, artist_id: Artist.find_by_name('Snarky Puppy').id},
  {name: 'Outlier', album_id: Album.find_by_name('We like it here').id, artist_id: Artist.find_by_name('Snarky Puppy').id},
  {name: 'Tio Macaco', album_id: Album.find_by_name('We like it here').id, artist_id: Artist.find_by_name('Snarky Puppy').id},
  {name: 'Lingus', album_id: Album.find_by_name('We like it here').id, artist_id: Artist.find_by_name('Snarky Puppy').id},
  {name: 'Till the End', album_id: Album.find_by_name('Fahrenheit').id, artist_id: Artist.find_by_name('Toto').id},
  {name: 'We Can Make It Tonight', album_id: Album.find_by_name('Fahrenheit').id, artist_id: Artist.find_by_name('Toto').id},
  {name: 'Without Your Love', album_id: Album.find_by_name('Fahrenheit').id, artist_id: Artist.find_by_name('Toto').id},
  {name: 'Cant Stand It Any Longer', album_id: Album.find_by_name('Fahrenheit').id, artist_id: Artist.find_by_name('Toto').id},
  {name: 'Ill Be Over You', album_id: Album.find_by_name('Fahrenheit').id, artist_id: Artist.find_by_name('Toto').id},
  {name: 'Fahrenheit', album_id: Album.find_by_name('Fahrenheit').id, artist_id: Artist.find_by_name('Toto').id},
  {name: 'Somewhere Tonight', album_id: Album.find_by_name('Fahrenheit').id, artist_id: Artist.find_by_name('Toto').id},
  {name: 'Could This Be Love', album_id: Album.find_by_name('Fahrenheit').id, artist_id: Artist.find_by_name('Toto').id},
  {name: 'Lea', album_id: Album.find_by_name('Fahrenheit').id, artist_id: Artist.find_by_name('Toto').id},
  {name: 'Dont Stop Me Now', album_id: Album.find_by_name('Farenheit').id, artist_id: Artist.find_by_name('Toto').id}
  ])
