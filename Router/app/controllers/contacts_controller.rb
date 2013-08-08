class ContactsController < ApplicationController
  def index
    @contacts = Contact.where("user_id = ?", params[:user_id])
    render :json => @contacts
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      render :json => @contact
    else
      render :json => contact.errors, status: :unprocessable_entity
    end

  end

  def show
    @contact = Contact.find(params[:id])
    render :json => @contact
  end

  def update
    @contact = Contact.find(params[:id])

    if @contact.nil?
      render :json => contact.errors, status: :unprocessable_entity
    else
      @contact.update_attributes(params[:contact])
    end

    render :json => @contact
  end

  def destroy
    @contact = Contact.find(params[:id])

    if @contact
      @contact.destroy
    else
      render :json => contact.errors, status: :unprocessable_entity
    end

    render :json => @contact
  end

end
