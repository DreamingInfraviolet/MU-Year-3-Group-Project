class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

def initAll
  if @current_user.nil?
    @current_user = User.find_by(id: session[:user_id])
  else
    @current_user
  end
end #of initAll

def logged_in?
  !@current_user.nil?
end

  def sign_in_user(user,password)
      if user && user.authenticate(password)
      #Log in! :D
      session[:user_id] = user.id
      return true
    else
      return false
    end
  end


before_filter :initAll
helper_method :logged_in?
helper_method :sign_in_user
end
