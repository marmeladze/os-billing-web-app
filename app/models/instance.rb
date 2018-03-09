class Instance < ActiveRecord::Base
  has_many :instance_details
  has_many :cpu_loads
  belongs_to :owner

  def detail
    instance_details.last
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
