class Genre < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :artist_genres
  has_many :artists, through: :artist_genres
  has_many :album_genres
  has_many :albums, through: :album_genres

  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
  end


end
