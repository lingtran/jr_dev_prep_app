class QuestionsController < ApplicationController
  def index
    @question = Question.random
    @user_question = UserQuestion.new
    @user_question.question = @question
  end
end
