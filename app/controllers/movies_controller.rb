class MoviesController < ApplicationController

  def index
    @stimes = Hash.new
    @movies = Movie.find(:all)
    @movies.each do |m|  
      @stimes[m.id] = Showtime.find(:all, 
                                    :order => 'starttime',
                                    :conditions => ['movie_id = ?', m.id])

      
    end
  end


end
