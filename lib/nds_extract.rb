$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
directors_database
def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {}
  directors_index = 0 
  while directors_index < nds.length do
    director = nds[directors_index]
    result[director[:name]] = directors_total(director)
    directors_index += 1
  end
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  result
end

def directors_total(director)
  total = 0 
  index = 0 
  while index < director[:movies].length do
    total += director[:movies][index][:worldwide_gross]
    index += 1 
  end
  total
end
