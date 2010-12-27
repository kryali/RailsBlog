class UserMailer < ActionMailer::Base
  default :from => "noreply@gentle-samurai-40.heroku.com"

	def welcome_email(user)
		# @user = user
		@url = "http://coursesillinois.com/login"
		mail(:to => "kiranryali@yahoo.com", :subject => "Welcome to My Awesome Site")
	end
end
