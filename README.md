# Movie Rack Sample Code Exercise

## Background

The Movie Rack application will help movie theaters publish movies and showtimes, and sell tickets to movies.

Coding for the application hasn't started yet. The first step of the project is a very rough proof of concept. Some basic requirements have been sketched.

## Requirements

### Tools and Technology
- The application should be written using Rails 3
- It should be specified and tested using RSpec 2 (`rails generate rspec:install` has already been executed for the project)
- The database should be SQLite3
- The database schema should be managed with Rails migrations
- Views can be written in either ERB or HAML

### Sample Data
- The code should be submitted with sample data so that the app can be used immediately
- Use the seed data mechanism that is part of Rails to create the sample data
- The sample data set doesn't have to be extensive. You can keep it minimal enough to not be a hassle, but enough to get a feel for the working of the app through the UI.

### User Experiences
- List movies and showtimes for theaters
- Allow the list to be filtered by a given time of day
- In the filtered list, include movies that start up to 20 minutes before the given time, and up to 20 minutes after the given time
- Purchase tickets for a chosen movie and showtime
- Enter the number of tickets to purchase
- When the number of tickets exceeds the number of available seats for a showtime, inform the user
- A theater has a number of "cheap seats" that are 50% of the cost of regular seats. These seats are sold last.

### Exclusions for the Proof of Concept
- Don't worry about listing movies for a given date. This isn't relevant for this rough draft of the app
- Don't worry about styling. Focus more on communicating intent. Minimal, or no CSS at all is acceptable.

## Submitting Your Code

Take the time you need to do this exercise. It's not a race, but we're looking forward to reviewing the code and moving on to the next step.

To submit the code:
- Fork the repository on GitHub
- Commit your code to your fork
- When you're done, submit a pull request on GitHub, or send me an email message with the repository address.

## Definition of "Done"

If you don't have enough time available to you to complete all the features, implement the subset that you believe is sufficient for representing your best work.

## Ask for Help if You Need It

If you're not familiar or comfortable with Git or GitHub, let us know. It's not a problem. We can work around this, or help you through the process.

If any of the tools, requirements, expectations, or solution ideas aren't clear to you, don't get stressed about it. Ask us for help and we'll work together to see it through.