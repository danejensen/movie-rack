class AddMovieIdToShowtime < ActiveRecord::Migration
  def self.up
    add_column :showtimes, :movie_id, :integer
  end

  def self.down
    remove_column :showtimes, :movie_id
  end
end
