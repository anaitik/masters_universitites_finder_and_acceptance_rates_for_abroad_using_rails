module BxBlockReply
    class RepliesController < ApplicationController
      def create
        query = BxBlockQuery::Query.find(params[:reply][:query_id])
        reply = query.replies.build(reply_params)
        
        if reply.save
          render json: reply, status: :created
        else
          render json: reply.errors, status: :unprocessable_entity
        end
      end
  
      private
  
      def reply_params
        params.require(:reply).permit(:content)
      end
    end
  end
  