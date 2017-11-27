class AddColumnsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :admin, :bool
    add_column :users, :code, :string
    add_column :users, :username, :string
  end
end
