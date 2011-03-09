class MoviesController < ApplicationController

  def index
    if params[:time] 
      time = params[:time].to_i
      @stimes = Hash.new
      @movies = Movie.find(:all)
      @movies.each do |m|  
        @stimes[m.id] = Showtime.find(:all, 
                                      :order => 'starttime',
                                      :conditions => ['movie_id = ? AND starttime > ? AND starttime < ?', m.id, Time.at(time - 1200).utc, Time.at(time + 1200).utc ])
      end
    else
      @stimes = Hash.new
      @movies = Movie.find(:all)
      @movies.each do |m|  
        @stimes[m.id] = Showtime.find(:all, 
                                      :order => 'starttime',
                                      :conditions => ['movie_id = ?', m.id])
      end


      
    end
  end


end
