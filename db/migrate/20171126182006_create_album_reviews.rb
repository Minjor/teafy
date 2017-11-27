class CreateAlbumReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :album_reviews do |t|
      t.integer :album_id
      t.integer :user_id
      t.text :review

      t.timestamps
    end
  end
end
