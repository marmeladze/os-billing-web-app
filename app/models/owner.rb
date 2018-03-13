class Owner < ActiveRecord::Base

  def instances
    Instances.where(owner_uid: uid)
  end
end
