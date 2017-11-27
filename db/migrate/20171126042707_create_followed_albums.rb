class CreateFollowedAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :followed_albums do |t|
      t.integer :album_id
      t.integer :user_id

      t.timestamps
    end
    add_index :followed_albums, :user_id
    add_index :followed_albums, :album_id
  end
end
