module BxBlockLogin
    class LoginsController < ApplicationController
      def create
        if login_params[:email].present? && login_params[:password].present?
          account = AccountBlock::Account.find_by(email: login_params[:email])
  
          if account&.authenticate(login_params[:password])
            token = BuilderJsonWebToken::JsonWebToken.encode(account.id)
            render json: { account: account, token: token }
          else
            render json: { error: 'Invalid email or password' }, status: :unauthorized
          end
        else
          render json: { error: 'Email and password are required' }, status: :bad_request
        end
      end
  
      private
  
      def login_params
        params.require(:login).permit(:email, :password)
      end
    end
  end
  