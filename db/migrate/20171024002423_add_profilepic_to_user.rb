class AddProfilepicToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :pic, :string
  end
end
