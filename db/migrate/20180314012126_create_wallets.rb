class CreateWallets < ActiveRecord::Migration
  def change
    create_table :wallets do |t|
      t.references :owner, index: true, foreign_key: true
      t.float :balance

      t.timestamps null: false
    end
  end
end
