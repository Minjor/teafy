class Genre < ApplicationRecord
  has_many :artist_genres
  has_many :artists, through: :artist_genres
  has_many :album_genres
  has_many :albums, through: :album_genres
end
