class PostController < ApplicationController
	def list
		@posts = Post.all
	end
end