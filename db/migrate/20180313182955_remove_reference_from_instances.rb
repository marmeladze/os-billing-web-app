class RemoveReferenceFromInstances < ActiveRecord::Migration
  def change
  	remove_reference :instances, :owner, index: true, foreign_key: true
  	add_column :instances, :owner_uid, :string, unique: true
  end
end
