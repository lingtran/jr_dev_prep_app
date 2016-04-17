class UserQuestionsController < ApplicationController

  def create
    user_question = UserQuestion.create(user_question_params)
    current_user.user_questions << user_question
    redirect_to questions_path
  end

  def edit
    @user_question = UserQuestion.find(params[:id])
  end

  def update
    @user_question = UserQuestion.find(params[:id])
    if @user_question.update(user_question_params)
      redirect_to profile_path
    else
      render :edit
    end
  end

  private

  def user_question_params
    params.require(:user_question).permit(:user_id, :question_id, :comments, :comfort_level)
  end
end
