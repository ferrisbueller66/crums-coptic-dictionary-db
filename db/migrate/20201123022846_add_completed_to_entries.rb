class AddCompletedToEntries < ActiveRecord::Migration[6.0]
  def change
    add_column :entries, :completed, :boolean, default: false

  end
end
