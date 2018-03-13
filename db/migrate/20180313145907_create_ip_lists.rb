class CreateIpLists < ActiveRecord::Migration
  def change
    create_table :ip_lists do |t|
      t.string :address
      t.string :type
      t.references :instance, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
