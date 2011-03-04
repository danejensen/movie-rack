class ShowtimeController < ApplicationController

  def show
    @s = Showtime.find(params[:id])
    @movie = Movie.find(@s.movie_id)
  end

end
