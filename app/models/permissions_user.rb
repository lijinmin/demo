class PermissionsUser < ActiveRecord::Base
	self.table_name = 'permissions_users'
	belongs_to :user
	belongs_to :permission
end