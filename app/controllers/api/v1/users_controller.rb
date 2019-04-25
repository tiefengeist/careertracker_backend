class Api::V1::UsersController < ApplicationController
  

  def index
    @users = User.all
    render json: @users
  end

  def find_user
    @user = User.find(params[:id])
  end

  def create
    @user = User.find_or_create_by(user_params)
    render json: @user
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
