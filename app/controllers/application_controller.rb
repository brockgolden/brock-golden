class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def is_signed_in_admin
  	if current_user
	    unless current_user.admin?
	      redirect_to root_url
	    end
	  else
    	redirect_to root_url
    end
  end
end
