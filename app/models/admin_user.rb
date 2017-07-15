class AdminUser < ActiveRecord::Base

	def find_user
		AdminUser.configurations
		
	end
end