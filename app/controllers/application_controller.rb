class ApplicationController < ActionController::Base
  protect_from_forgery
  
  session :on

  private

  def authenticate
=begin
	  authenticate_or_request_with_http_basic do |user_name, password|
		  user_name == 'admin' && password == 'password'
	  end
=end
  end

end
