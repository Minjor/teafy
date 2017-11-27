class DropNewsTable < ActiveRecord::Migration[5.0]
    def up
      drop_table :news
    end
    def down
      create_table :news do |t|
        t.string :title
        t.text :content

        t.timestamps
      end
    end
end
