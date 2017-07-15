class Permission < ActiveRecord::Base
   has_many :permissions_users , class_name: :PermissionsUser
   has_many :users, through: :permissions_users
   has_many :permissions_roles, class_name: :PermissionsRole
   has_many :roles ,through:  :permissions_roles	
end