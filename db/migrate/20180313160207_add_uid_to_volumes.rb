class AddUidToVolumes < ActiveRecord::Migration
  def change
    add_column :volumes, :uid, :string, unique: true
  end
end
