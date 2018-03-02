class Instance < ActiveRecord::Base
  has_one :instance_detail

  def detail
    instance_detail
  end
end
