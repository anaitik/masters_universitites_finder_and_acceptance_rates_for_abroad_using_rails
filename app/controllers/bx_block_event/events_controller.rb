module BxBlockEvent
    class EventsController < ApplicationController
        
      def index
        @events = BxBlockEvent::Event.all
        render json: @events, status: :ok
      end
       
    def show
        @event = BxBlockEvent::Event.find(params[:id])
        render json: @event, status: :ok
      rescue ActiveRecord::RecordNotFound
        render json: { message: 'Event not found' }, status: :not_found
      end
    end
  end
  