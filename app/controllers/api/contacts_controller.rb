class Api::ContactsController < ApplicationController

  def index
    @contact = Contact.all 
    render 'contact.json.jb'
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render 'contact.json.jb'
  end

  def create
    @contact = Contact.create(
      id: params[:id], 
      first_name: params[:first_name], 
      last_name: params[:last_name], 
      phone_number: params[:phone_number]
      )
    render 'contact.json.jb'
  end

  def update
    @contact = Contact.find_by(id: params[:id])

    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.phone_number = params[:phone_number] || @contact.phone_number

    @contact.save
    render 'contact.json.jb'
  end

  def destroy
    contact = Contact.find_by(id: params[:id])
    contact.destroy
    render json: {message: "This contact has been deleted"}
  end

end
