class Playlist < ApplicationRecord
    validates :user_id, presence: true

    belongs_to :user
    has_many :in_playlists
    has_many :songs, through: :in_playlists
    has_many :followed_playlists
    has_many :followers, through: :followed_playlists
end
