class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.integer :chapter
      t.string :starting_page
      t.string :lemma
      t.string :pos

      t.timestamps
    end
  end
end
