$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
require'pry'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  nds.pp
  nil
end

def print_first_directors_movie_titles
    movies = directors_database[0][:movies]
    
    index = 0 
    while index < movies.size do
    puts movies[index][:title]
    binding.pry       
    index += 1
    end
  end
