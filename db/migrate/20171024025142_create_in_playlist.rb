class CreateInPlaylist < ActiveRecord::Migration[5.0]
  def change
    create_table :in_playlists do |t|
        t.integer :song_id
        t.integer :playlist_id
    end
    add_index :in_playlists, :song_id
    add_index :in_playlists, :playlist_id
  end
end
