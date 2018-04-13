class Flavor < ActiveRecord::Base
	validates :name, presence: true
	validates :os_id, uniqueness: true 
end
