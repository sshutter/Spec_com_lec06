class MainController < ApplicationController
  def login
    u = User.where(username: params[:username]).first
    if u && u.authenticate(params[:password])
      redirect_to main_login_path
      session[:logged_in] = true
    else
      redirect_to main_login_path, notice: 'Wrong Username or Password'
    end
  end
end
