class PermissionsRole < ActiveRecord::Base
	self.table_name = 'permissions_roles'
	belongs_to :permission
	belongs_to :role
end