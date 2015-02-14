class PostController < ApplicationController
	def list
		@posts = Post.all
		@posts_length = @posts.length
	end

	def show
		@post = Post.find_by_parameterized_title(params['title'])
	end

  def addThumbnail
    if session[:isAdmin]
      post = Post.find(params[:id])
      if !post.nil?
        if post.thumbnail.nil?
          name = params[:thumbnail].original_filename
          path = 'public/posts/'+params[:id]+'/thumbnail/'+name
          File.open(path, "wb") { |f| f.write(params[:thumbnail].read) }
          post.thumbnail = name
          post.save
        end
      end
      redirect_to '/admin/post/'+params[:id]
    end
  end

  def removeThumbnail
    if session[:isAdmin]
      post = Post.find(params[:id])
      if !post.nil?
        file = 'public/posts/'+params[:id]+'/thumbnail/'+post.thumbnail
        File.delete(file) if File.file?(file)
        post.thumbnail = nil
        post.save
      end
      redirect_to '/admin/post/'+params[:id]
    end
  end
end