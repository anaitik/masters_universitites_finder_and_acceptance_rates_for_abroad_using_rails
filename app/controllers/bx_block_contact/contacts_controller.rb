module BxBlockContact
	class ContactsController < ApplicationController
	  before_action :set_contact, only: [:show, :update, :destroy]

	  

	  def create
	    @contact = Contact.new(contact_params)

	    if @contact.save
	      render json: @contact, status: :created
	    else
	      render json: @contact.errors, status: :unprocessable_entity
	    end
	  end

	 

	  private

	  def set_contact
	    @contact = Contact.find(params[:id])
	  end

	  def contact_params
	    params.require(:contact).permit(:firstName, :lastName, :phoneNumber, :emailAddress)
	  end
	end
end
