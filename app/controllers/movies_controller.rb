class MoviesController < ApplicationController
  def index
  @movies = Movie.all
  end

  def show
  end

  def edit
  end

  def new
  end
end
