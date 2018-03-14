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

end
