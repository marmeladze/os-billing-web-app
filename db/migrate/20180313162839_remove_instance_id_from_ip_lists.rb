class RemoveInstanceIdFromIpLists < ActiveRecord::Migration
  def change
  	remove_reference :ip_lists, :instance, index: true, foreign_key: true
  	add_column :ip_lists, :instance_uid, :string, unique: true
  end
end
