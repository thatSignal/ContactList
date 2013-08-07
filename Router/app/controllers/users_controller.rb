class UsersController < ApplicationController
  def index
    puts 'Hello, world. I am The Index.'
    @users = User.all
    render :json => @users
  end

  def show
    puts 'Hi. I am The Show - The only one in town'
    @user = User.find(params[:id])
    render :json => @user
  end

  def create
    user = User.new(
      params[:user]
    )
    if user.save
      render :json => user
    else
      render :json => user.errors, status: :unprocessable_entity
    end

    #redirect_to user_url(user)
  end

  def update
    user = User.find(params[:id])

    if user.nil?
      render :json => user.errors, :status :unprocessable_entity
    else
      p params
      user.update_attributes(params[:user])
    end

    render :json => user
  end #end update

end
