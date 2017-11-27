class CreateArtistReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :artist_reviews do |t|
      t.integer :artist_id
      t.integer :user_id
      t.text :review

      t.timestamps
    end
  end
end
