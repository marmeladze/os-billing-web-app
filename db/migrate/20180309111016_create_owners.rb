class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :uid
      t.string :email
      t.string :tenant

      t.timestamps null: false
    end
    add_index :owners, :email, unique: true
  end
end
