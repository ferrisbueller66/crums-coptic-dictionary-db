class CreateMeaningReferences < ActiveRecord::Migration[6.0]
  def change
    create_table :meaning_references do |t|
      t.belongs_to :meaning, index: true, foreign_key: true
      t.belongs_to :reference, index: true, foreign_key: true
      t.timestamps
    end
  end
end
