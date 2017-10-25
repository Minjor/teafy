class Artist < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :artist_genres
  has_many :genres, through: :artist_genres
  has_many :albums, dependent: :destroy
  has_many :songs, dependent: :destroy

  def self.search(search)
    where("name ILIKE ? OR bio ILIKE ? ", "%#{search}%", "%#{search}%")
  end

end
