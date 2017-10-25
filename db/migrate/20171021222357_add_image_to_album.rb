class AddImageToAlbum < ActiveRecord::Migration[5.0]
  def change
    remove_column :albums, :image, :string
    add_column :albums, :image, :string
  end
end
