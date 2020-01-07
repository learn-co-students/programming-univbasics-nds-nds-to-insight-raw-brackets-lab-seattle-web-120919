$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

require 'pp'
require 'pry'

def directors_totals(nds)
  totals = {}
  row_index = 0 
  while row_index < nds.length do 
    directors_name = nds[row_index][:name]
    directors_movies = nds[row_index][:movies]
    column_index = 0
    totals[directors_name] = 0 
    while column_index < directors_movies.length do 
      totals[directors_name] += directors_movies[column_index][:worldwide_gross]
      column_index += 1 
  end 
  row_index += 1 
end
totals
end




















#   #binding.pry
#   totals = {}
#   row_index = 0
#   while row_index < nds.length do 
# directors_name = nds[row_index][:name]
# directors_movies = nds[row_index][:movies] 
# column_index = 0
# totals[directors_name] = 0

# while column_index < directors_movies.length do 
#   directors_movies[column_index][:worldwide_gross]
#   totals[directors_name] += directors_movies[column_index][:worldwide_gross]
# column_index += 1 
# end 
# row_index += 1
# end 
# return totals 
# end 

 
  
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!

