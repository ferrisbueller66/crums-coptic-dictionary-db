class CreateEntryConnections < ActiveRecord::Migration[6.0]
  def change
    create_table "entry_connections" :force => true, :id => false  do |t|
      t.integer "entry_a_id", :null => false
      t.integer "entry_b_id", :null => false
    end
  end
end
