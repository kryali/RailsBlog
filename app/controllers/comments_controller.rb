class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(params[:comment].merge({:user_id => session[:current_user_id]}))
		redirect_to post_path(@post)
	end

	def destroy
		@post = Post.find(params[:post_id])
		@post.comments.find(params[:id]).destroy
		redirect_to post_path(@post)
		flash[:notice] = "Comment deleted!"
	end
end
