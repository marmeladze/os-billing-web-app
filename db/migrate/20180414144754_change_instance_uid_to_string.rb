class ChangeInstanceUidToString < ActiveRecord::Migration
  def change
  	change_column :instances, :uid, :string
  end
end
