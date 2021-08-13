class MoviesController < ApplicationController

  def new
    @movie = Movie.new
  end

  def index
    @movies = Movie.all
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save
    redirect_to movies_path
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :overview, :poster_url, :rating)
  end
end
