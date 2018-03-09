class Owner < ActiveRecord::Base
  has_many :instances
end
