class AddReferencesToSongs < ActiveRecord::Migration[5.0]
  def change
    add_index :songs, :artist_id
    add_index :songs, :album_id
  end
end
