class ShowtimeController < ApplicationController


  def show
    @s = Showtime.find(params[:id])
    @movie = Movie.find(@s.movie_id)
  end

  def update
    @s = Showtime.find_by_id(params[:id])
    @s.seatsold = @s.seatsold - params[:tickets].to_i
    @s.save
    redirect_to :controller => 'showtime', :action => 'show'
  end 

end
