class Album < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  mount_uploader :image, ImageUploader
  has_many :album_genres
  has_many :genres, through: :album_genres
  has_many :songs, dependent: :destroy

  def self.search(search)
    where("name ILIKE ? ", "%#{search}%")
  end

end
