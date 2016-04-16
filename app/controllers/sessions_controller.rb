class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to profile_path(@user.id)
    else
      flash[:error] = "Oops. Invalid login. Try again!"
      render :new
    end
  end
end
