# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Owner.all.each do |owner|
  Wallet.create(owner_id: owner.id, balance: 0.00)
end

Wallet.all.each do |wallet|
  WalletAction.create(wallet_id: wallet.id, action_type: "deposit", amount: 1.00)
end 
