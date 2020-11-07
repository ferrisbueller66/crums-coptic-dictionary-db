class AddCrossReferenceToEntry < ActiveRecord::Migration[6.0]
  def change
    add_column :entries, :cross_reference, :integer
  end
end
