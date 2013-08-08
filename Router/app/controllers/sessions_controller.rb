require 'securerandom'

class SessionsController < ApplicationController

  def create
    @user = User.authenticate(params[:username], params[:email])

    if @user
      @generated_token = @user.generate_token
      render :json => @generated_token
    else
      render :json => session.errors, status: :forbidden
    end
  end

  def destroy
    current_user.session_token = SecureRandom.urlsafe_base64

    render :text => "Connection Disintegrated."

  end
end
