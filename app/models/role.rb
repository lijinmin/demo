class Role < ActiveRecord::Base
   has_many :users_roles, class_name: UserRole
   has_many :users, through: :users_roles
   has_many :permissions_roles, class_name: PermissionsRole
   has_many :permissions ,through:  :permissions_roles	
end