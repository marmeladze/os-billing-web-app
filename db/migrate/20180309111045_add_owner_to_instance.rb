class AddOwnerToInstance < ActiveRecord::Migration
  def change
    add_reference :instances, :owner, index: true, foreign_key: true
  end
end
