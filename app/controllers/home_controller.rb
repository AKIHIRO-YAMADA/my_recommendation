class HomeController < ApplicationController
  def top
	@movies = Movie.page(params[:page]).per(9)
	if params[:category_id]
	  @movies = Movie.where(category_id: params[:category_id]).page(params[:page]).per(9)
	else
	  @movies = Movie.joins(:category).page(params[:page]).per(9)
	end
  end

  def about
  end

end
