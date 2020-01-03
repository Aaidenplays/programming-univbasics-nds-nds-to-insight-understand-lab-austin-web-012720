require 'yaml'

def directors_database
	rot13 = -> (s) { s.tr('A-Za-z', 'N-ZA-Mn-za-m') }
  @_db ||= YAML.load(rot13.call(File.open("directors_db").read.to_s))
end
    movies = directors_database[0][:movies]
    
    index = 0 
    while index < movies.size do
    puts movies[index][:title]
    binding.pry       
    index += 1
 
    end
    
