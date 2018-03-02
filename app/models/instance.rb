class Instance < ActiveRecord::Base
  has_many :instance_detail

  def detail
    instance_details.last
  end
end
