module BxBlockQuestion
  class QuestionsController < ApplicationController

    def show
      questions = BxBlockQuestion::Question.where(test_id: params[:id])
      render json: questions
    end
      
  end
end
