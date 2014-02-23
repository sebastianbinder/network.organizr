class Device < ActiveRecord::Base
	belongs_to :user
	has_one :iprange, :through => :user
end
