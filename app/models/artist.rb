class Artist < ApplicationRecord
  has_many :artist_genres
  has_many :genres, through: :artist_genres
  has_many :albums, dependent: :destroy
  has_many :songs, dependent: :destroy
end
