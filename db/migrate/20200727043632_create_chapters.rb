class CreateChapters < ActiveRecord::Migration[6.0]
  def change
    create_table :chapters do |t|
      t.string :title
      t.string :description
      t.string :notes
      t.belongs_to :book, index: true, foreign_key: true

      t.timestamps
    end
  end
end
