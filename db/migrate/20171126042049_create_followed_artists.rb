class CreateFollowedArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :followed_artists do |t|
      t.integer :artist_id
      t.integer :user_id

      t.timestamps
    end
    add_index :followed_artists, :user_id
    add_index :followed_artists, :artist_id
  end
end
