class AnswersController < ApplicationController
  def create
    question = Question.find(params[:question_id])
    answer = question.answers.build(answer_params)
    if answer.save
      render json: answer, status: :created
    else
      render json: answer.errors, status: :unprocessable_entity
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:content)
  end
end
