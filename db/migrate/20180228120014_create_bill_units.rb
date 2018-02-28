class CreateBillUnits < ActiveRecord::Migration
  def change
    create_table :bill_units do |t|
      t.float :vcpu
      t.float :ram
      t.float :vdisk
      t.datetime :date
      t.boolean :enabled

      t.timestamps null: false
    end
  end
end
