class AddNameToInstance < ActiveRecord::Migration
  def change
    add_column :instances, :name, :string
  end
end
