class CreateAlbumGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :album_genres do |t|
      t.integer :album_id
      t.integer :genre_id
      t.timestamps
    end
    add_index :album_genres, :album_id
    add_index :album_genres, :genre_id
  end
end
