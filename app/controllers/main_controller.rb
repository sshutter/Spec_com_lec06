class MainController < ApplicationController

  def login
    
  end
  
  def create
    u = User.where(username: params[:username]).first
    if u && u.authenticate(params[:password])
      redirect_to students_path
      session[:logged_in] = true
    else
      redirect_to main_login_path, alert: 'Wrong Username or Password'
    end
  end

  def destroy
  end
end
