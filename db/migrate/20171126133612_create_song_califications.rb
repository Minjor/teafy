class CreateSongCalifications < ActiveRecord::Migration[5.0]
  def change
    create_table :song_califications do |t|
      t.integer :user_id
      t.integer :song_id
      t.integer :grade

      t.timestamps
    end
    add_index :song_califications, :user_id
    add_index :song_califications, :song_id
  end
end
