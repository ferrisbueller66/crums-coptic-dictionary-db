class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.string :lexeme
      t.string :dialects
      t.string :pos
      t.string :gloss
      t.string :notes
      t.belongs_to :page, index: true, foreign_key: true

      t.timestamps
    end
  end
end
