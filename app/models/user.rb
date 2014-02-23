class User < ActiveRecord::Base
	has_many :devices
	belongs_to :iprange
end
