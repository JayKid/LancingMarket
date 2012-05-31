class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user
  
  private

  def current_user
  	begin
  		@current_user ||= Contractant.find(session[:user_id]) if session[:user_id]
  	rescue ActiveRecord::RecordNotFound  => e
  		@current_user = nil
  	end
  end
end
