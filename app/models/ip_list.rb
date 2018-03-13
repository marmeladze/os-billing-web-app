class IpList < ActiveRecord::Base
  def instance
    Instance.find_by(uid: instance_uid)
  end
end
