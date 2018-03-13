class CreateVolumes < ActiveRecord::Migration
  def change
    create_table :volumes do |t|
      t.string :type
      t.integer :amount
      t.boolean :available
      t.references :instance, index: true, foreign_key: true
      t.references :owner, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
