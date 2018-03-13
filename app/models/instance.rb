class Instance < ActiveRecord::Base
  has_many :cpu_loads

  def owner
    Owner.find_by(uid: owner_uid)
  end

  def volumes
    Volume.where(instance_uid: uid)
  end

  def ip_list
    IpList.where(instance_uid: uid)
  end

  def max_load_for_today
  	cpu_loads.where("DATE(created_at) = DATE(?)", Time.now).maximum(:percentage)
  end

  def min_load_for_today
  	cpu_loads.where("DATE(created_at) = DATE(?)", Time.now).minimum(:percentage)
  end

  def avg_load_for_today
  	cpu_loads.where("DATE(created_at) = DATE(?)", Time.now).average(:percentage).to_f
  end

end
