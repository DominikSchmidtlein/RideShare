class DurationCalculator
  require 'net/http'

  KEY = 'AIzaSyDUx9e59xTD9yzKcHGUHFLdo5rpYcyvG5U'.freeze

  def duration(origin, destination, *waypoints)
    uri = URI.parse('https://maps.googleapis.com/maps/api/directions/json')
    params = { origin: origin, destination: destination,
               waypoints: waypoints.join('|'),
               key: KEY }
    uri.query = URI.encode_www_form(params)
    response = Net::HTTP.get(uri)
    directions = JSON.parse(response)
    directions['routes'][0]['legs'].map { |x| x['duration'] }
  end
end
