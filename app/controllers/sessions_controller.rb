class SessionsController < ApplicationController
  def new
  end
  

  def create
      @user = User.find_by_email(params[:user][:email])
      if @user && @user.authenticate(params[:user][:password])
        
        session[:user_id] = @user.id
        redirect_to users_path(@user), :notice => "Logged in!"
    else
        flash.now.alert = "Invalid email or password"
        render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to log_in_path
  end
end