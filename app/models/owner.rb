class Owner < ActiveRecord::Base
  has_one :wallet
  after_create :initialize_wallet

  def instances
    Instance.where(owner_uid: uid)
  end

  def volumes
    Volume.where(owner_uid: uid)
  end

  def instance_by_status status
    instances.where(status: status)
  end

  def balance
    wallet.balance
  end

  def fips
    Fip.where(tenant_uid: [tenant, default_project_id])
  end

  def routers
    Router.where(tenant_uid: [tenant, default_project_id])
  end

  def firewalls
    Firewall.where(tenant_uid: [tenant, default_project_id])
  end

  def load_balancers
    LoadBalancer.where(tenant_uid: [tenant, default_project_id])
  end

  def initialize_wallet
    wallet = Wallet.create(owner_id: id, balance: 0.0)
    WalletAction.create(wallet_id: wallet.id, action_type: "deposit", amount: 1.0)    
  end

end
