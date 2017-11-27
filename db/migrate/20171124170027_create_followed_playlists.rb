class CreateFollowedPlaylists < ActiveRecord::Migration[5.0]
  def change
    create_table :followed_playlists do |t|
      t.integer :user_id
      t.integer :playlist_id

      t.timestamps
    end
    add_index :followed_playlists, :user_id
    add_index :followed_playlists, :playlist_id
  end
end
