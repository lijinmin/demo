class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   has_many :users_roles, class_name: UserRole
   has_many :roles, through: :users_roles
   has_many :permissions_users, class_name: PermissionsUser
   has_many :permissions ,through:  :permissions_users
end
