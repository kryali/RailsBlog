class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(params[:user])
		@user.save
		redirect_to(Post)
		flash[:notice] = @user.errors
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to User
		flash[:notice] = "User removed"
	end
	
	def login
  end
	
	def authenticate
  	#redirect_to Post
  	if session[:current_user_id]
  	  redirect_to Post
  		flash[:notice] = "You're logged in!"
  	else
  	  @user = User.new(params[:loginform])
  	  valid_user = User.find(:first,:conditions => ["username = ? and password = ?",@user.username, @user.password])
  	  if valid_user
  	    session[:current_user_id] = valid_user.id
      	redirect_to Post
      	flash[:notice] = "Logged in!"
      else
        redirect_to :controller => 'users', :action => 'login'
      	flash[:notice] = "Incorrect login"
  	  end
  	end
	end
	
	def logout
	  if session[:current_user_id]
	    reset_session
	    session[:current_user_id] = nil
	  end
	  redirect_to Post
	end
	
end
