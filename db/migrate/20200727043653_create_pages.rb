class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.string :src_img
      t.belongs_to :chapter, index: true, foreign_key: true

      t.timestamps
    end
  end
end
