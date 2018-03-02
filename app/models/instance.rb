class Instance < ActiveRecord::Base
  has_many :instance_details

  def detail
    instance_details.last
  end
end
