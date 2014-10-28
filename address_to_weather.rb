require 'open-uri'
require 'json'
require './address_to_coords.rb'

# If you experience an error relating to SSL,
#   uncomment the following two lines:

require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

# Paste API key here if it changes for some reason.
api_key = "e937af7b7f9792ee1b197a54684d46e2"+"/"
forecast_io_api_url = "https://api.forecast.io/forecast/"

# Create the api address with the API key included.
forecast_io_api_w_key = forecast_io_api_url + api_key

puts "Let's get the weather forecast for your address."

puts "What is the address you would like to know the weather for?"
the_address = gets.chomp
url_safe_address = URI.encode(the_address)

# Your code goes below.

# Pass the address to the google geocoder API using address_to_coords.rb

maps_api_base_address = "http://maps.googleapis.com/maps/api/geocode/json?address="
maps_api_request_address = maps_api_base_address+url_safe_address

parsed_maps_result = JSON.parse(open(maps_api_request_address).read)
maps_address_result = parsed_maps_result["results"][0]

# Let's store the latitude in a variable called 'the_latitude',
#   and the longitude in a variable called 'the_longitude'.

the_latitude = maps_address_result["geometry"]["location"]["lat"]
the_longitude = maps_address_result["geometry"]["location"]["lng"]

# Create a url to pass to forecast.io API with the LAT/LON pair included.
api_call_url = forecast_io_api_w_key + the_latitude + "," + the_longitude

# Send a call to the server for forecast data at the LAT/LON pair. Store the result as api_call_result.
api_call_result = JSON.parse(open(api_call_url).read)

the_temperature = api_call_result["currently"]["temperature"]
the_hour_outlook = api_call_result["minutely"]["summary"]
the_day_outlook = api_call_result["hourly"]["summary"]

# Ultimately, we want the following line to work when uncommented:
puts "The current temperature at #{the_address} is #{the_temperature} degrees."
puts "The outlook for the next hour is: #{the_hour_outlook}"
puts "The outlook for the next day is: #{the_day_outlook}"
