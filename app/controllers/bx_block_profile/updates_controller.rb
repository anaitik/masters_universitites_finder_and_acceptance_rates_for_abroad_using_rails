module BxBlockProfile
    class UpdatesController < ApplicationController
    
      skip_before_action :verify_authenticity_token
      def update
        
        account = AccountBlock::Account.find(params[:id])
      
        if account.update(profile_params)
          render json: account, status: :ok
        else
          render json: account.errors, status: :unprocessable_entity
        end
      end
      

      private
     
      def profile_params
        params.require(:account).permit(:name, :email)
      end
      
      
    end



  end
  