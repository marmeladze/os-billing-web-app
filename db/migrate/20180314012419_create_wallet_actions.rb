class CreateWalletActions < ActiveRecord::Migration
  def change
    create_table :wallet_actions do |t|
      t.references :wallet, index: true, foreign_key: true
      t.string :action_type
      t.float :amount

      t.timestamps null: false
    end
  end
end
