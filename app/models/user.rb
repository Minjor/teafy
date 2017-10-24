class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true, uniqueness: true
  mount_uploader :pic, PicUploader
  before_create do
    if self.code == 'quaker'
      self.admin = true
    else
      self.admin = false
    end

  end


end
