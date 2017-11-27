class CreateArtistCalifications < ActiveRecord::Migration[5.0]
  def change
    create_table :artist_califications do |t|
      t.integer :artist_id
      t.integer :user_id
      t.integer :grade

      t.timestamps
    end
    add_index :artist_califications, :artist_id
    add_index :artist_califications, :user_id
  end
end
