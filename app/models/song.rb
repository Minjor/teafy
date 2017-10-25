class Song < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  belongs_to :artist
  belongs_to :album
  has_many :in_playlists
  has_many :playlists, through: :in_playlists

  def self.search(search)
    where("name ILIKE ? ", "%#{search}%")
  end

end
