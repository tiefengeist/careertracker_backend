class Api::V1::FanPagesController < ApplicationController

  def index
    @fan_pages = FanPage.all
    render json: @fan_pages
  end

  def show
    @fan_page = FanPage.find_by(fan_page_params)
    render json: @fan_page
  end

  def find_creator
    @fan_page = FanPage.find(params[:id])
  end

  def create
    @fan_page = FanPage.find_or_create_by(fan_page_params)
    render json: @fan_page
  end

  private
  def fan_page_params
    params.require(:fan_page).permit(:user_id, :creator_id)
  end

end
