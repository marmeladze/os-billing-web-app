class Volume < ActiveRecord::Base
  belongs_to :instance
  belongs_to :user
end
