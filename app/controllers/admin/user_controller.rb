class Admin::UserController < ApplicationController
	def index
        logger.info "------------------#{current_user.email}------------------------"		
        logger.info "------------------#{can?("角色管理")}------------------------"	
        logger.info "------------------#{current_ability}------------------------"	
	end

	def permission
		
	end
end