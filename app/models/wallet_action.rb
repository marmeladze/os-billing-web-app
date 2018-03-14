class WalletAction < ActiveRecord::Base
  belongs_to :wallet
  after_create :update_wallet_balance
  validates :action_type, inclusion: { in: %w(deposit checkout), message: "%{value} is not a valid action type" }
  validates :amount, presence: true
  validates :amount, numericality: true
  validates :wallet, presence: true

  private

  def update_wallet_balance
    wallet.notify!
  end
end
