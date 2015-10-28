class AnswersController < ApplicationController

	def index
	 @answer = Answer.order("RANDOM()").first
  end

  def new
    @answer = Answer.new
  end

  def create
    Answer.create(answer_params)
    redirect_to new_answer_path
  end

  private

  def answer_params
    params.require(:answer).permit(:response)
  end
end
