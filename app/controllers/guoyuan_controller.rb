class GuoyuanController < ApplicationController
	def index
		
	end

	def chanye
		
	end

	def chanye_3
		
	end

	def chanye_4
		
	end

	def chanye_5
		
	end

	def new_0
		
	end

	def new_0_2
		
	end

	def new_0_7
		
	end

	def new_0_1
		
	end

	def new_yq
		
	end

	def new_yq_6
		
	end

	def new_cyfz
		
	end

	def about
		
	end

	def about_wh
		
	end

	def about_rl
		
	end

	def about_zr
		
	end

	def contact
		
	end

	def send_message
		UserMailer.send_email(params).deliver
		redirect_to :back
	end
end