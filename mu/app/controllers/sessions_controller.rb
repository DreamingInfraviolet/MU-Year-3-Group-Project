class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(user_name: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      #Log in! :D
      session[:user_id] = user.id
      redirect_to root_url
    else
      @login_failure=true
      render 'new'
    end
  end

  def destroy
  session.delete(:user_id)
  @current_user = nil
  redirect_to root_url
  end
end
