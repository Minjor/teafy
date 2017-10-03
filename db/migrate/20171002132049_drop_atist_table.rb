class DropAtistTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :atists
  end
  def down
    create_table :atists do |t|
      t.string :name
      t.text :bio

      t.timestamps
    end
  end
end
