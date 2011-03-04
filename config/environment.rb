# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
MovieRack::Application.initialize!

# Format time
Time::DATE_FORMATS[:showtime] = "%B %d at %I:%M %p"
