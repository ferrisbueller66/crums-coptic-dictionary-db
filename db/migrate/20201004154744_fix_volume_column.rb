class FixVolumeColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :references, :volume_book, 'integer USING CAST(volume_book AS integer)'
  end
end
