class Api::V1::PeliculasController < ApplicationController

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create(movie_params)
    if @movie.save
      redirect_to api_v1_movies_path
    else
      render 'new'
    end
  end

  private
   def movie_params
     params.require(:movie).permit(:name_movie, :description, :url_movie, :presentation_days)
   end

end
