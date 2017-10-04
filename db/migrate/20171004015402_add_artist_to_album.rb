class AddArtistToAlbum < ActiveRecord::Migration[5.0]
  def change
    add_index :albums, :artist_id
  end
end
