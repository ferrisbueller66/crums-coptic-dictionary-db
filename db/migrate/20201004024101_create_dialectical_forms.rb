class CreateDialecticalForms < ActiveRecord::Migration[6.0]
  def change
    create_table :dialectical_forms do |t|
      t.belongs_to :dialect, index: true, foreign_key: true
      t.string :lexeme

      t.timestamps
    end
  end
end
