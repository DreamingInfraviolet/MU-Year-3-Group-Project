class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(user_name: params[:session][:username])
    if !sign_in_user(user, params[:session][:password])
      @login_failure=true
      render 'new'
    else
    redirect_to root_url
    end
  end
 
  def destroy
  session.delete(:user_id)
  @current_user = nil
  redirect_to root_url
  end
end
