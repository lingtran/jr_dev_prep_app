class QuestionsController < ApplicationController
  def index
    @question = Question.random
  end

end
