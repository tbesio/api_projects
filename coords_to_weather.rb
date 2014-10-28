require 'open-uri'
require 'json'

# If you experience an error relating to SSL,
#   uncomment the following two lines:

require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

puts "Let's get the weather forecast for your location."

puts "What is the latitude?"
the_latitude = gets.chomp

puts "What is the longitude?"
the_longitude = gets.chomp

# Your code goes below. Use the same approach as you did in
#   address_to_coords.rb to read from a remote API and parse
#   the results.

# Paste API key here if it changes for some reason.
api_key = "e937af7b7f9792ee1b197a54684d46e2"+"/"
forecast_io_api_url = "https://api.forecast.io/forecast/"

# Create the api address with the API key included.
forecast_io_api_w_key = forecast_io_api_url + api_key

# Create a url with the LAT/LON pair included.
api_call_url = forecast_io_api_w_key + the_latitude + "," + the_longitude

# Send a call to the server for forecast data at the LAT/LON pair. Store the result as api_call_result.
api_call_result = JSON.parse(open(api_call_url).read)

the_temperature = api_call_result["currently"]["temperature"]
the_hour_outlook = api_call_result["minutely"]["summary"]
the_day_outlook = api_call_result["hourly"]["summary"]

# Ultimately, we want the following line to work when uncommented:

puts "The current temperature at #{the_latitude}, #{the_longitude} is #{the_temperature} degrees."
puts "The outlook for the next hour is: #{the_hour_outlook}"
puts "The outlook for the next day is: #{the_day_outlook}"
