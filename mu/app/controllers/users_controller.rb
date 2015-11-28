class UsersController < ApplicationController
def new
  @user = User.new
end

def show
end

def create
  @user = User.new(params.require(:user).permit( :first_name, :second_name, :user_name, :password, :password_confirmation, :age, :email ))
  if @user.save
    flash[:success] = "Welcome, and thank you for signing up!";
    redirect_to '/home.html'
  else
    render 'new'
  end
end


end
