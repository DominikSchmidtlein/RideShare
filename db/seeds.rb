# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
trips = [
  { source: 'Stittsville, Ottawa, ON', destination: 'Gloucester, Ottawa, ON' },
  { source: 'Hull, Ottawa, ON', destination: 'Airport, Ottawa, ON' },
  { source: 'Carlington, Ottawa, ON', destination: 'The Glebe, Ottawa, ON' },
  { source: 'Westboro, Ottawa, ON', destination: 'Alta Vista, Ottawa, ON' },
  { source: 'Nepean, Ottawa, ON', destination: 'Vanier, Ottawa, ON' },
  { source: 'Carleton U, Ottawa, ON', destination: 'uOttawa, Ottawa, ON' },
  { source: 'Centretown, Ottawa, ON', destination: 'Overbrook, Ottawa, ON' },
  { source: 'Chinatown, Ottawa, ON', destination: 'Sandy Hill, Ottawa, ON' },
  { source: 'Centrepointe, Ottawa, ON', destination: 'Gloucester, Ottawa, ON' },
  { source: 'Gatineau, Ottawa, ON', destination: 'Greenbelt, Ottawa, ON' }
]
trips.each { |t| Trip.create(t) }
