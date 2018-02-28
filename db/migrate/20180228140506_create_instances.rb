class CreateInstances < ActiveRecord::Migration
  def change
    create_table :instances do |t|
      t.string :uid
      t.integer :cpu
      t.integer :ram
      t.integer :disk

      t.timestamps null: false
    end
  end
end
