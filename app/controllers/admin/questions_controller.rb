class Admin::QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @count = Question.count
    @categories = Question.unique_categories
  end

  def new
    @question = Question.new
  end

  def create
    question = Question.new(question_params)
    if question.save
      redirect_to admin_questions_path
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to admin_questions_path
    else
      render :edit
    end
  end


  private

  def question_params
    params.require(:question).permit(:title, :category)
  end
end
