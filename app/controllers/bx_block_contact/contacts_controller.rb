module BxBlockContact
	class ContactsController < ApplicationController
	  before_action :set_contact, only: [:show, :update, :destroy]

	  def index
	    @contacts = Contact.all
	    render json: @contacts
	  end


	  def create
	    @contact = Contact.new(contact_params)

	    if @contact.save
	      render json: @contact, status: :created
	    else
	      render json: @contact.errors, status: :unprocessable_entity
	    end
	  end

	  def update
	    if @contact.update(contact_params)
	      render json: @contact
	    else
	      render json: @contact.errors, status: :unprocessable_entity
	    end
	  end

	  def destroy
	    @contact.destroy
	    head :no_content
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
