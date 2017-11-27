class Album < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  mount_uploader :image, ImageUploader
  has_many :songs, dependent: :destroy

  has_many :album_genres
  has_many :genres, through: :album_genres
  has_many :followed_albums
  has_many :users, through: :followed_albums

  def self.search(search)
    where("name ILIKE ? ", "%#{search}%")
  end

end
