class CreateTenantBills < ActiveRecord::Migration
  def change
    create_table :tenant_bills do |t|
      t.integer :tenant_id
      t.float :total_vcpu
      t.float :total_ram
      t.float :total_vdisk
      t.datetime :bill_month
      t.float :totoal_usage
      t.boolean :status
      t.boolean :enabled

      t.timestamps null: false
    end
  end
end
