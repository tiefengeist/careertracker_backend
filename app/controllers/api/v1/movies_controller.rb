class Api::V1::MoviesController < ApplicationController

    def index
      @movies = Movie.all
      render json: @movies
    end

    def find_movie
      @movie = Movie.find(params[:id])
    end

    def create
      @movie = Movie.find_or_create_by(movie_params)
      render json: @movie
    end

    private

    def movie_params
      params.require(:movie).permit(:id, :name, :year, :summary, :poster_img)
    end
end
