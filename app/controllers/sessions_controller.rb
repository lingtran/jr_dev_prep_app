class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.role == "admin" && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to admin_questions_path
    elsif @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to profile_path(@user.id)
    else
      flash[:error] = "Oops. Invalid login. Try again!"
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
