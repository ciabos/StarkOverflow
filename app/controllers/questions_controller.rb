class QuestionsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  expose(:questions)
  expose(:question)

  def index
  end

  def show
  end

  def new
  end

  def create
    self.question = Question.new(question_params)
    if question.save
      redirect_to question, notice: 'Question added successfully'
    else
      render action: 'new'
    end
  end

  private
    def question_params
      params.require(:question).permit(:title, :content)
    end
end
