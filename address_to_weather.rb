require 'open-uri'
require 'json'
require './address_to_coords.rb'

# If you experience an error relating to SSL,
#   uncomment the following two lines:

# require 'openssl'
# OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

# Paste API key here if it changes for some reason.
api_key = "e937af7b7f9792ee1b197a54684d46e2"

puts "Let's get the weather forecast for your address."

puts "What is the address you would like to know the weather for?"
the_address = gets.chomp
url_safe_address = URI.encode(the_address)

# Your code goes below.

# Ultimately, we want the following line to work when uncommented:

# puts "The current temperature at #{the_address} is #{the_temperature} degrees."
# puts "The outlook for the next hour is: #{the_hour_outlook}"
# puts "The outlook for the next day is: #{the_day_outlook}"
