class CreateFollowedSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :followed_songs do |t|
      t.integer :user_id
      t.integer :song_id

      t.timestamps
    end
    add_index :followed_songs, :user_id
    add_index :followed_songs, :song_id
  end
end
