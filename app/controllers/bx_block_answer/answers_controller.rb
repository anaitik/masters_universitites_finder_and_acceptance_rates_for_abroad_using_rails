module BxBlockAnswer
  class AnswersController < ApplicationController
    def create
      answers_params = params[:answers] || []
      results = []

      account_id = params[:account_id] # Get the account_id from the request params

      answers_params.each do |answer_params|
        question = BxBlockQuestion::Question.find(answer_params[:question_id])
        answer = question.answers.build(content: answer_params[:content], account_id: account_id)

        if answer.save
          results << answer
        else
          results << { error: answer.errors.full_messages }
        end
      end

      render json: results, status: :ok
    end
  end
end
