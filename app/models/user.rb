class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable,
         :omniauthable, :omniauth_providers => [:facebook]

  validates :username, presence: true, uniqueness: true
  mount_uploader :pic, PicUploader

  has_many :followed_playlists
  has_many :playlists, through: :followed_playlists
  has_many :followed_artists
  has_many :artists, through: :followed_artists
  has_many :followed_albums
  has_many :albums, through: :followed_albums
  has_many :followed_songs
  has_many :songs, through: :followed_songs

  has_one :song_calification
  validates :song_calification, uniqueness: true
  has_one :album_calification
  validates :album_calification, uniqueness: true
  has_one :playlist_calification
  validates :playlist_calification, uniqueness: true
  has_one :artist_calification
  validates :artist_calification, uniqueness: true

  before_create do
    if self.code == 'quaker'
      self.admin = true
    else
      self.admin = false
    end
  end

  def self.from_omniauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    return user if user
    user = User.create(username:auth.name,
                           provider:auth.provider,
                           uid:auth.uid,
                           email:auth.info.email,
                           pic:auth.info.image,
                           password:Devise.friendly_token[0,20]
                           )
  end

  def self.new_with_session(params, session)
     super.tap do |user|
       if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
         user.email = data["email"] if user.email.blank?
       end
     end
   end
end
