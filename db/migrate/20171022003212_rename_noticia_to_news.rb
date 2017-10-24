class RenameNoticiaToNews < ActiveRecord::Migration[5.0]
    def up
      drop_table :noticia
    end
    def down
      create_table :noitica do |t|
        t.string :title
        t.text :content

        t.timestamps
      end
    end
  end
