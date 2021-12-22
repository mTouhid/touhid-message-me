class SessionsController < ApplicationController
  def new
    
  end

  def create
    @user = User.find_by(username: params[:sessions][:username])
    if @user && @user.authenticate(params[:sessions][:password])
      session[:user_id] = @user.id
      session[:expires_at] = Time.current + 30.minutes 
      flash[:success] = "You have logged in successfully"
      redirect_to root_path
    else
      flash.now[:error] = "There was a problem with your credentials. Please try again."
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You have successfully logged out"
    redirect_to root_path
  end
end