class Song < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  belongs_to :artist
  belongs_to :album
end
