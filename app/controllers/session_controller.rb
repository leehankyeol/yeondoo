class SessionController < ApplicationController
  layout 'admin'

  def create
    if !Rails.application.secrets.default_password.blank?
      if params[:password] == Rails.application.secrets.default_password
        session[:isAdmin] = 1;
      else 
        session[:isAdmin] = false;
      end
    end
    redirect_to admin_path
  end

  def destroy
    session[:isAdmin] = false;
    redirect_to admin_path
  end
end