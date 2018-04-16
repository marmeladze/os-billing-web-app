class Volume < ActiveRecord::Base

  UNIT_PRICES = {
    "icsci" => 0.10,
    "fast" =>  0.20,
    "ultra" => 0.30,
    "ufast" => 0.40
  }

  def price_for(vtype, vsize)
    UNIT_PRICES[vtype]*vsize
  end

  def instance
    Instance.find_by(uid: instance_uid)
  end

  def owner
    Owner.find_by(uid: owner_uid)
  end

end
