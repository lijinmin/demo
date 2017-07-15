class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # before_action :authenticate_user!
  # protect_from_forgery with: :exception
  helper_method :current_role, :current_ability

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def current_role
  	if session[:role_id]
  		@current_role = Role.find_by_id(session[:role_id])
  	end
  	@current_role ||= current_user.roles.first 
  end

  def current_ability
  	@current_ability ||= Ability.new(current_user,current_role)
  end

   private
 
    def record_not_found
      render plain: "404 Not Found", status: 404
    end
end
