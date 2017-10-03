class CreateArtistGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :artist_genres do |t|
      t.integer :artist_id
      t.integer :model_id

      t.timestamps
    end
  end
end
