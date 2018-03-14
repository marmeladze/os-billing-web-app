class Owner < ActiveRecord::Base
  has_one :wallet

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
    Fip.where(tenant_uid: tenant)
  end

  def routers
    Router.where(tenant_uid: tenant)
  end

  def firewalls
    Firewall.where(tenant_uid: tenant)    
  end

  def load_balancers
    LoadBalancer.where(tenant_uid: tenant)    
  end

end
