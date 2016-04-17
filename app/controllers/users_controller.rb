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
    @questions = current_user.questions
    @comments = current_user.user_questions.select(:comments)
  end

  def update
    @user_question = UserQuestion.create(user_question_params)
    current_user.user_questions << @user_question
    @question.user_questions << @user_question
    redirect_to questions_path
  end


  private

  def user_params
    params.require(:user).permit(:name, :email, :username, :password)
  end

  def user_question_params
    params.require(:user_question).permit(:user_id, :question_id, :comments, :comfort_level)
  end
end
