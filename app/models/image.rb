class Image < ActiveRecord::Base
  validates :uid, uniqueness: true
  scope :usable, -> { where(status: "ACTIVE") } 
end
