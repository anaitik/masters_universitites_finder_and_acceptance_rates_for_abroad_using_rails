module BxBlockProfile
    class ProfilesController < ApplicationController
      before_action :get_user
      def index
        
        account = AccountBlock::Account.find_by(id: get_user.id)

        if account
          render json: account, status: :ok
        else
          render json: { message: 'Account not found' }, status: :not_found
        end
      end

      private
      def get_user
       
        token = request.headers['token']
        decoded_token = BuilderJsonWebToken::JsonWebToken.decode(token)
        @current_user = AccountBlock::Account.find(decoded_token.id)
      end
    end



  end
  