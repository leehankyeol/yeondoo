class PostController < ApplicationController
	def list
		@posts = Post.all
		@posts_length = @posts.length
	end

	def read
		@post = Post.find_by_parameterized_title(params['title'])
	end
end