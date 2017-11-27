class CreatePlaylistCalifications < ActiveRecord::Migration[5.0]
  def change
    create_table :playlist_califications do |t|
      t.integer :playlist_id
      t.integer :user_id
      t.integer :grade

      t.timestamps
    end
    add_index :playlist_califications, :playlist_id
    add_index :playlist_califications, :user_id
  end
end
