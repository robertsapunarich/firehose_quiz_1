class AnswersController < ApplicationController

	def index
	 @answer = Answer.first
  end

  def new
    @answer = Answer.new
  end

  def create
    Answer.create(answer_params)
    redirect_to new_answer_path
  end

  def show
    Answer.last
  end

  private

  def answer_params
    params.require(:answer).permit(:response)
  end
end
