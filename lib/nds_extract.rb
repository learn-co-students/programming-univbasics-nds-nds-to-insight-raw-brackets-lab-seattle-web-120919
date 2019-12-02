$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Remember, it's always OK to pretty print what you get *in* to make sure
# that you know what you're starting with!
# => require 'pp'
# => pp nds
# The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
# result = {
# }
# Use loops, variables and the accessing method, [], to loop through the NDS
# and total up all the values
# ...
#
# Be sure to return the result at the end!

def directors_totals(nds)
director_hash = {}
director_index = 0

while director_index < directors_database.length do
  key = directors_database[director_index][:name]

  director_gross = 0
  movie_index = 0
    while movie_index < directors_database[director_index][:movies].length do
      director_gross += directors_database[director_index][:movies][movie_index][:worldwide_gross]

      director_hash[key] = director_gross
      movie_index += 1
    end
  director_index += 1
end

p director_hash
end
