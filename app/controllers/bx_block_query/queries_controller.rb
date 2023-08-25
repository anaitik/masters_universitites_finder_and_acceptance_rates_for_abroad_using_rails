module BxBlockQuery
    class QueriesController < ApplicationController
        skip_before_action :verify_authenticity_token
      def create
        query = BxBlockQuery::Query.new(query_params)
        query.account_id = get_user.id  # Set the account_id based on the currently logged-in user
  
        if query.save
          render json: query, status: :created
        else
          render json: query.errors, status: :unprocessable_entity
        end
      end
  
      private
      def get_user
       
        token = request.headers['token']
        decoded_token = BuilderJsonWebToken::JsonWebToken.decode(token)
        @current_user = AccountBlock::Account.find(decoded_token.id)
      end
      def query_params
        params.require(:query).permit(:title, :description, :status)
      end
    end
  end
  