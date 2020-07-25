class HomeController < ApplicationController
  def top
  	@movies = Movie.all
  end
end
