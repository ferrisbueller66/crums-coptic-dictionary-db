class CreateMeanings < ActiveRecord::Migration[6.0]
  def change
    create_table :meanings do |t|
      t.belongs_to :entry, index: true, foreign_key: true
      t.string :lexical_entry
      t.string :translation_value

      t.timestamps
    end
  end
end
