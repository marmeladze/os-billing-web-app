class CreateLoadBalancers < ActiveRecord::Migration
  def change
    create_table :load_balancers do |t|
      t.string :name
      t.string :operating_status
      t.string :provisioning_status
      t.string :provider
      t.string :vip_address
      t.string :tenant_uid

      t.timestamps null: false
    end
    add_index :load_balancers, :vip_address, unique: true
  end
end
