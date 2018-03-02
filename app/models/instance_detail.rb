class InstanceDetail < ActiveRecord::Base
  belongs_to :instance

  def running?
  	state == 1 ? "UP" : "DOWN"
  end
end
