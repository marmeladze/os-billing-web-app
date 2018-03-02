class CreateInstanceDetails < ActiveRecord::Migration
  def change
    create_table :instance_details do |t|
      t.references :instance, index: true, foreign_key: true
      t.string :zone
      t.boolean :state
      t.string :status
      t.datetime :created

      t.timestamps null: false
    end
  end
end
