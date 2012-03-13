class SessionsController < ApplicationController

  def new
    if logged_in?
      redirect_to user_path(current_user)
    else
      @user = User.new
    end
    render :layout => 'lander'
  end

  def create
    if @user = login(params[:username], params[:password]) 
      redirect_to user_path(@user), :notice => "Welcome back to Agendo."
    else
      redirect_to login_path
      flash[:error] = "Error logging in."
    end
  end

  def destroy
    if logged_in?
      logout
      redirect_to login_path, :notice => "Logged out"
    else
      redirect_to login_path
    end
  end
end
