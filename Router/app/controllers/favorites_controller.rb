class FavoritesController < ApplicationController
  def index
    user = User.find(params[:user_id])
    @favorites =  user.favorite_contacts
    render :json => @favorites
  end

  def create
    @favorite = Favorite.new(params[:favorite])
    if @favorite.save
      render :json => @favorite
    else
      render :json => favorite.errors, status: :unprocessable_entity
    end

  end

  def destroy
    @favorite = Favorite.find(params[:id])
    if @favorite.destroy
      render :json => @favorite
    else
      render :json => favorite.errors, status: :unprocessable_entity
    end
  end

end
