class CreateReferences < ActiveRecord::Migration[6.0]
  def change
    create_table :references do |t|
      t.belongs_to :dialect, index: true, foreign_key: true
      t.string :source
      t.integer :volume_book
      t.integer :line_verse
      t.string :text_excerpt
      t.string :translation
      t.string :notes
      t.string :greek_equivalent

      t.timestamps
    end
  end
end
