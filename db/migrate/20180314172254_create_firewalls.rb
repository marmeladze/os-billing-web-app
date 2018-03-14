class CreateFirewalls < ActiveRecord::Migration
  def change
    create_table :firewalls do |t|
      t.string :tenant_uid
      t.string :status
      t.text :routers
      t.string :name

      t.timestamps null: false
    end
  end
end
