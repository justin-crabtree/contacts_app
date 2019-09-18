class ContactsController < ApplicationController

  def index
    @contacts = Contact.all 
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    @contact = Contact.new(
      first_name: params[:first_name], 
      last_name: params[:last_name], 
      phone_number: params[:phone_number], 
      email: params[:email]
      )
    @contact.save
    redirect_to "/contacts/#{@contact.id}"
  end

  def show
    @contacts = Contact.find(params[:id])
    render 'show.html.erb'
  end
end
