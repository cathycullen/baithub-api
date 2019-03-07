class UsersController < ApplicationController

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      render status: :created
    else
      render json: { error: 'Invalid credentials' },
             status: :unauthorized
    end
  end

  def destroy
    session[:user_id] = nil
    head :ok
  end
end
