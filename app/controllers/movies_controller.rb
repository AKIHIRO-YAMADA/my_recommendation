class MoviesController < ApplicationController
  def index
    @movies = Movie.page(params[:page]).per(9)
    if params[:category_id]
      @movies = Movie.where(category_id: params[:category_id]).page(params[:page]).per(9)
    else
      @movies = Movie.joins(:category).page(params[:page]).per(9)
    end
  end

  def show
    @movie = Movie.find(params[:id])
    @movie_comment = MovieComment.new
    @movie_comments = @movie.movie_comments.page(params[:page]).per(8)
    @user = User.find_by(id: params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = current_user.movies.build(movie_params)
    if @movie.save
      redirect_to @movie
    else
      render :new
    end
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to @movie
    else
      render :edit
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_url
  end

  def search
    @q_movies = @q.result.page(params[:page]).per(9)
    render :index
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :image, :heading, :category_id)
  end
end
