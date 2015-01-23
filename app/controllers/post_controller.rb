class PostController < ApplicationController
	def list
		@posts = Post.all
		@posts_length = @posts.length
	end
end