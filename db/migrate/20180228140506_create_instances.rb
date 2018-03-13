class CreateInstances < ActiveRecord::Migration
  def change
    create_table :instances do |t|
      t.string :uid
      t.integer :cpu
      t.integer :ram
      t.integer :disk
      t.string  :flavor
      t.string  :image
      t.string  :zone
      t.string  :status
      t.string  :state
      t.creation :datetime

      t.timestamps null: false
    end
  end
end
