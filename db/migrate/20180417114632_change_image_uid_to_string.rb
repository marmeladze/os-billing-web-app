class ChangeImageUidToString < ActiveRecord::Migration
  def change
  	change_column :images, :uid, :string
  end
end
