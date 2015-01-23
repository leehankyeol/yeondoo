class PostController < ApplicationController
	def list
		@posts = Post.all
		@posts_length = @posts.length
	end

	def show
		@post = Post.find_by_parameterized_title(params['title'])
	end
end