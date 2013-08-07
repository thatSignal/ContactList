class FavoritesController < ApplicationController
  def index
    user = User.find(params[:user_id])
    @favorites =  user.favorite_contacts
    render :json => @favorites

    p @favorites
  end

  def create
    @favorite = Favorite.create!(params[:favorite])
    render :json => @favorite
  end

  def show
    @favorite = Favorite.find(params[:id]).contact
    render :json => @favorite

    p @favorite
  end

  def update
    @favorite = Favorite.find(params[:id])

    if @favorite.nil?
      render :json => user.errors, status: :unprocessable_entity
    else
      @favorite.update_attributes(params[:favorite])
    end

    render :json => @favorite
  end

  def destroy
    @favorite = Favorite.find(params[:id])

    if @favorite.nil?
      render :json => user.errors, status: :unprocessable_entity
    else
      @favorite.destroy
    end

    render :json => @favorite
  end

end
