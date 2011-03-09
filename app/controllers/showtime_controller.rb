class ShowtimeController < ApplicationController


  def show
    @s = Showtime.find(params[:id])
    @movie = Movie.find(@s.movie_id)
  end

  def update
    @s = Showtime.find_by_id(params[:id])
    @s.seatsold = @s.seatsold - params[:tickets].to_i
    unless @s.save
      flash[:notice] = "Sorry you aren't allowed to purchase more tickets than there are available."
    end
    redirect_to :controller => 'showtime', :action => 'show'
  end 

end
