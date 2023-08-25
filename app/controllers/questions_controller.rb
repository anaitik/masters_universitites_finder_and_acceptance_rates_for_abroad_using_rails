class QuestionsController < ApplicationController
  before_action :set_test

  def create
    question = @test.questions.new(question_params)
    if question.save
      render json: question, status: :created
    else
      render json: question.errors, status: :unprocessable_entity
    end
  end

  def show
    question = @test.questions.find(params[:id])
    render json: question
  end

  def update
    question = @test.questions.find(params[:id])
    if question.update(question_params)
      render json: question
    else
      render json: question.errors, status: :unprocessable_entity
    end
  end

  def destroy
    question = @test.questions.find(params[:id])
    question.destroy
    head :no_content
  end

  private

  def set_test
    @test = Test.find(params[:test_id])
  end

  def question_params
    params.permit(:content)
  end
end
