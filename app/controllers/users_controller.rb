class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:username, :password))
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Successfully signed up and logged in"
      redirect_to root_path
    else
      flash.now[:error] = "Sign up failed"
      render 'new'
    end
  end
end
