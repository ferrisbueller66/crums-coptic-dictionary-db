class AddColumnToEntries < ActiveRecord::Migration[6.0]
  def change
    add_reference :entries, :head, index: true
  end
end
