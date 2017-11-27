class CreateAlbumCalifications < ActiveRecord::Migration[5.0]
  def change
    create_table :album_califications do |t|
      t.integer :album_id
      t.integer :user_id

      t.timestamps
    end
    add_index :album_califications, :album_id
    add_index :album_califications, :user_id
  end
end
