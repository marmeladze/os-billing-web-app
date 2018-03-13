class RenameTypeToVolType < ActiveRecord::Migration
  def change
  	rename_column :volumes, :type, :volume_type
  end
end
