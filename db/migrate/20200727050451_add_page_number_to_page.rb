class AddPageNumberToPage < ActiveRecord::Migration[6.0]
  def change
    add_column :pages, :pagination, :integer
  end
end
