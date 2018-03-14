class AddUniqueToInstanceName < ActiveRecord::Migration
  def change
    add_index :instances, :name, unique: true
  end
end
