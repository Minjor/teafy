class CreatePlaylistReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :playlist_reviews do |t|
      t.integer :playlist_id
      t.integer :user_id
      t.text :review

      t.timestamps
    end
  end
end
