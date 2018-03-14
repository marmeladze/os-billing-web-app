class CreateRouters < ActiveRecord::Migration
  def change
    create_table :routers do |t|
      t.string :name
      t.string :status
      t.string :address
      t.string :tenant_uid
      t.datetime :creation

      t.timestamps null: false
    end
    add_index :routers, :address, unique: true
  end
end
