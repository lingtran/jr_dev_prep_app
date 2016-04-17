class QuestionsController < ApplicationController
  def index
    @question = Question.random
    @user_question = UserQuestion.new
  end
end
