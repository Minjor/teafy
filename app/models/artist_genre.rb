class ArtistGenre < ApplicationRecord
  validates :genre_id, presence: true
  belongs_to :artist
  belongs_to :genre
end
