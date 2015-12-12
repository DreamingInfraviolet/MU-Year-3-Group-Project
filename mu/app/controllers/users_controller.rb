class UsersController < ApplicationController
def new
  @user = User.new
end

def show
end

def create
  @user = User.new(params.require(:user).permit( :first_name, :second_name, :user_name, :password, :password_confirmation, :age, :email ))
  @user.score = 0
  @user.exercises_completed_id=""
  if @user.save &&  sign_in_user(@user, params[:user][:password])
     redirect_to root_url
  else
    render 'new'
  end
end

def update
end

end
