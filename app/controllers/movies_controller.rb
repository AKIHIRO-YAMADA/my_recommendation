class MoviesController < ApplicationController
  def index
  	 @movies = Movie.all
  end

  def show
  	 @movie = Movie.find(params[:id])
  	 @user = @movie.user

  end

  def edit
  @book = Book.find(params[:id])
  end

  def new
  end

  private
  def movie_params
      params.require(:movie).permit(:title, :impression)
    end
end

