class Volume < ActiveRecord::Base

  def instance
    Instance.find_by(uid: instance_uid)
  end

  def owner
    Owner.find_by(uid: owner_uid)
  end

end
