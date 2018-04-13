class CreateFlavors < ActiveRecord::Migration
  def change
    create_table :flavors do |t|
      t.integer :os_id
      t.string :name
      t.integer :ram
      t.integer :disk
      t.integer :vcpus
      t.boolean :is_public
      t.boolean :enabled
      t.float :price

      t.timestamps null: false
    end
  end
end
