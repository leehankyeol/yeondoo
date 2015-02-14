class AdminController < ApplicationController
  before_filter :check_session, :except => :login
  layout 'admin'

  def check_session
    if !session[:isAdmin]
      redirect_to admin_login_path
    end
  end

  def index

  end

  def posts
    @posts = Post.all
  end

  def login

  end
end