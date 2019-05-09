class Api::V1::CreatorsController < ApplicationController

  def index
    @creators = Creator.all

  end

  def show
    @creator = Creator.find_by(id: params[:id])
    render json: @creator

  end

  def currentuser
    @current_user = User.find_by(id: params[:user_id])
    @creators = @current_user.creators
    render json: @creators
  end

  def find_creator
    @creator = Creator.find(params[:id])
  end

  def create
    @creator = Creator.find_or_create_by(creator_params)
    render json: @creator
  end

  private

  def creator_params
    params.require(:creator).permit(:id, :name, :specialty, :birthday, :bio, :avg_rating, :img, :user_id)
  end
end
