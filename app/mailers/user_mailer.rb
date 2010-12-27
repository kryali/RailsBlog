class UserMailer < ActionMailer::Base
  default :from => "noreply@coursesillinois.com"

	def welcome_email(user)
		@user = user
		@url = "http://coursesillinois.com/login"
		mail(:to => @user.username + "@yahoo.com", :subject => "Welcome to CoursesIllinois")
	end
end
