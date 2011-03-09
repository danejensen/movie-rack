class Showtime < ActiveRecord::Base
  validates_numericality_of :seatsold, :greater_than_or_equal_to=>0
  belongs_to :movie

end
