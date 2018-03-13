class Owner < ActiveRecord::Base

  def instances
    Instance.where(owner_uid: uid)
  end

  def volumes
    Volume.where(owner_uid: uid)
  end

  def instance_by_status status
    instances.where(status: status)
  end

end
