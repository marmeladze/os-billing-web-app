class CreateFips < ActiveRecord::Migration
  def change
    create_table :fips do |t|
      t.string :status
      t.string :tenant_uid
      t.string :fixed_ip
      t.string :floating_ip
      t.datetime :creation

      t.timestamps null: false
    end
    add_index :fips, :floating_ip, unique: true
  end
end
