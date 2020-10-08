class AddColumnToDialecticalForms < ActiveRecord::Migration[6.0]
  def change
    add_column :dialectical_forms, :add_dialect, :boolean
  end
end
