class UsersController < ApplicationController

  include SessionsHelper

  # users POST /users(.:format)     users#create
  def create
    user = User.create user_params
    redirect_to log_in_path
  end

  # new_user GET  /users/new(.:format) users#new
  def new
    @user = User.new
  end

  def log_in
  end

  def profile
    authenticate!
    @user = current_user
    # if session[:user_id]
    #   @user = User.find session[:user_id]
    # else
    #   redirect_to log_in_path
    # end
  end

  private

  def user_params
    params.require(:user).permit(:username, :name, :email, :password)
  end

end # UsersController
