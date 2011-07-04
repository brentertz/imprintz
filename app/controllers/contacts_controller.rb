class ContactsController < ApplicationController
  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      flash[:success] = "Email was successfully sent."
      redirect_to('/')
    else
      flash[:error] = "You must fill in all required fields."
      redirect_to('/')
    end
  end
end
