class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action CASClient::Frameworks::Rails::GatewayFilter, only: :login_with_cas

  def login_with_cas
  	if User.find_by school_id: session[:cas_user]
    	@current_user = User.find_by school_id: session[:cas_user]
    else
  		@current_user = User.create!(
  				school_id: session[:cas_user].to_i,
  				name: session[:cas_user],
  				password: session[:cas_user]
  			)
    end
  	#end
  end

  def current_user
  	@current_user
  end

  def user_signed_in?
  	!@current_user.nil?
  end


  def logout
    CASClient::Frameworks::Rails::Filter.logout(self)
  end
end