class RemoveReferencesFromInstances < ActiveRecord::Migration
  def change
  	remove_reference :volumes, :owner, index: true, foreign_key: true
  	remove_reference :volumes, :instance, index: true, foreign_key: true
    add_column :volumes, :owner_uid, :string
    add_column :volumes, :instance_uid, :string
  end
end
