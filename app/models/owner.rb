class Owner < ActiveRecord::Base

  def instances
    Instance.where(owner_uid: uid)
  end

  def volumes
    Volume.where(owner_uid: uid)
  end

end
