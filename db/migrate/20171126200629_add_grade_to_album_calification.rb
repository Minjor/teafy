class AddGradeToAlbumCalification < ActiveRecord::Migration[5.0]
  def change
    add_column :album_califications, :grade, :integer
  end
end
