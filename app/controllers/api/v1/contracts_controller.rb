class Api::V1::ContractsController < ApplicationController

  def index
    @contracts = Contract.all
    render json: @contracts   
  end

  def show
    @contract = Contract.find_by(contract_params)
  end

  def update
    
    @contract = Contract.find(params[:id])
    @contract.update(film_comment: params[:film_comment])
    render json: @contract
  end

  def currentcreator
    @contracts = Contract.where(user_id: params[:user_id], creator_id: params[:creator_id])
    render json: @contracts
  end

  def currentmovie
    @contract = Contract.find_by(user_id: params[:user_id], creator_id: params[:creator_id], movie_id: params[:movie_id])
    render json: @contract
  end

  def find_contract
    @contract = Contract.find(params[:id])
  end

  def create
    @contract = Contract.find_or_create_by(contract_params)

    render json: @contract
  end

  private

  def contract_params
    params.require(:contract).permit(:id, :creator_id, :movie_id, :user_id, :film_comment)
  end

end
