class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:reg_success] = "Successfully registered! Go ahead and log in."
      redirect_to login_path
    else
      render :new
    end
  end

  def show
    @comments = current_user.user_questions.where.not(comments: "")
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :username, :password)
  end
end
