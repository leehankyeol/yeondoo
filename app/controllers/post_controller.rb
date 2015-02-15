class PostController < ApplicationController
  layout 'admin', only: [:create, :edit]

	def create
    @post = Post.new
    render 'edit'
  end

  def edit
    if session[:isAdmin]
      @post = Post.find(params[:id])
    end
  end

  def list
    @posts = Post.all
    @posts_length = @posts.length
  end

  def show
    @post = Post.find_by_parameterized_title(params['title'])
  end

  def update
    if session[:isAdmin]
      id = params[:id]
      content = params[:content]
      pTitle = params[:pTitle]
      summary = params[:summary]
      title = params[:title]
      post = nil

      if !id.empty?
        # update
        post = Post.find(id)
        if post.nil?
          redirect_to '/post/edit/'+post.id
        end
      else
        # create
        post = Post.new
      end
      post.parameterized_title = pTitle
      post.content = content
      post.summary = summary
      post.title = title
      post.save
      redirect_to '/post/edit/'+post.id.to_s
    end
  end

  def addThumbnail
    if session[:isAdmin]
      post = Post.find(params[:id])
      if !post.nil?
        if post.thumbnail.nil?
          if !params[:thumbnail].nil?
            FileUtils.mkdir_p('public/posts/'+params[:id]) unless File.directory?('public/posts/'+params[:id])
            FileUtils.mkdir_p('public/posts/'+params[:id]+'/thumbnail') unless File.directory?('public/posts/'+params[:id]+'/thumbnail')
            name = params[:thumbnail].original_filename
            path = 'public/posts/'+params[:id]+'/thumbnail/'+name
            File.open(path, "wb") { |f| f.write(params[:thumbnail].read) }
            post.thumbnail = name
            post.save
          end
        end
      end
      redirect_to '/post/edit/'+params[:id]
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
      redirect_to '/post/edit/'+params[:id]
    end
  end
end