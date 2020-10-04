class CreateEntryDialects < ActiveRecord::Migration[6.0]
  def change
    create_table :entry_dialects do |t|
      t.belongs_to :entry, index: true, foreign_key: true
      t.belongs_to :dialectical_form, index: true, foreign_key: true

      t.timestamps
    end
  end
end
