class ContactsController < ApplicationController
  def index
    @contacts = Contact.where("user_id = ?", params[:user_id])
    render :json => @contacts

    p @contacts
  end

  def create
    @contact = Contact.create!(params[:contact])
    render :json => @contact
  end

  def show
    @contact = Contact.find(params[:id])
    render :json => @contact
  end

  def update
    @contact = Contact.find(params[:id])

    if @contact.nil?
      render :json => user.errors, status: :unprocessable_entity
    else
      @contact.update_attributes(params[:contact])
    end

    render :json => @contact
  end

  def destroy
    @contact = Contact.find(params[:id])

    if @contact.nil?
      render :json => user.errors, status: :unprocessable_entity
    else
      @contact.destroy
    end

    render :json => @contact
  end

end
