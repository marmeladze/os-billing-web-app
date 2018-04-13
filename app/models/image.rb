class Image < ActiveRecord::Base
	validates :uid, uniqueness: true
end
