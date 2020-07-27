class AddCrossReferenceToEntry < ActiveRecord::Migration[6.0]
  def change
    add_column :entries, :reference, :string
  end
end
