class FixLineColumnToInt < ActiveRecord::Migration[6.0]
  def change
    change_column :references, :line_verse, :integer, using: 'line_verse::integer'
  end
end
