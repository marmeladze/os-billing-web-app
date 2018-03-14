class Wallet < ActiveRecord::Base
  belongs_to :owner
  has_many :wallet_actions, inverse_of: :wallet
  
  def notify!
    amt = wallet_actions.last.amount
    case wallet_actions.last.action_type.to_sym
    when :deposit
      deposit amt
    when :checkout
      checkout amt
    end
  end

  def deposit amount
    update_attributes!(balance: balance.to_f + amount)
  end

  def checkout amount
    update_attributes!(balance: balance.to_f - amount)
  end

end
