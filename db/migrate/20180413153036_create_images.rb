class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :uid
      t.string :name
      t.string :status
      t.float :price

      t.timestamps null: false
    end
  end
end
