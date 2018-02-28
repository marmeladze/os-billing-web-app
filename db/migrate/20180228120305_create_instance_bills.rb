class CreateInstanceBills < ActiveRecord::Migration
  def change
    create_table :instance_bills do |t|
      t.string :name
      t.float :total_vcpu
      t.float :total_ram
      t.float :total_vdisk
      t.float :total_cost
      t.boolean :enabled

      t.timestamps null: false
    end
  end
end
