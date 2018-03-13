class Volume < ActiveRecord::Base

  def instance
    Instance.where(uid: instance_uid)
  end

  def owner
    Owner.where(uid: owner_uid)
  end

end
