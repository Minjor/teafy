class ReferencesInArtistGenre < ActiveRecord::Migration[5.0]
  def change
    remove_column :artist_genres, :model_id, :integer
    add_column :artist_genres, :genre_id, :integer
    add_index :artist_genres, :artist_id
    add_index :artist_genres, :genre_id
  end
end
