require 'open-uri'
require 'json'

# If you experience an error relating to SSL,
#   uncomment the following two lines:

# require 'openssl'
# OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

# Paste API key here if it changes for some reason.
api_key = "e937af7b7f9792ee1b197a54684d46e2"
forecast_io_api_address = "https://api.forecast.io/forecast/"

# Create the api address with the API key included.
forecast_io_api_w_key = forecast_io_api_address + api_key

puts "Let's get the weather forecast for your location."

puts "What is the latitude?"
the_latitude = gets.chomp

puts "What is the longitude?"
the_longitude = gets.chomp

# Your code goes below. Use the same approach as you did in
#   address_to_coords.rb to read from a remote API and parse
#   the results.

# Ultimately, we want the following line to work when uncommented:

# puts "The current temperature at #{the_latitude}, #{the_longitude} is #{the_temperature} degrees."
# puts "The outlook for the next hour is: #{the_hour_outlook}"
# puts "The outlook for the next day is: #{the_day_outlook}"
