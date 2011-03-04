# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
require 'active_record/fixtures'  
  
Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "movies")  

(1..50).each do |i|
  Showtime.create(:starttime => Time.at((432+rand(648))*100), :movie_id => (1+rand(8)))
end

