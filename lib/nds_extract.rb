$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

pp directors_database

# def directors_totals(source)
#   hash = {}
#   source.each do |director|
#     d_name = director[:name]
#     d_total = 0 
#     director[:movies].each do |movie|
#       d_total += movie[:worldwide_gross]
#     end
#     hash[d_name] = d_total
#   end
#   hash
# end

def directors_totals(source)
  hash = {}
  director_index = 0 
  while director_index < source.length do 
    movie_index = 0 
    d_name = source[director_index][:name]
    d_total = 0 
    while movie_index < source[director_index][:movies].length do 
      d_total += source[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1 
    end 
    director_index += 1 
    hash[d_name] = d_total
  end
 hash 
end

# def gross_for_director(director_hash)
# total = 0 
# director_hash[:movies].each do |movie|
#     total += movie[:worldwide_gross]
#     end
# total
# end

def gross_for_director(director_hash)
  total = 0 
  movie_index = 0 
  while movie_index < director_hash[:movies].length do 
    total += director_hash[:movies][movie_index][:worldwide_gross]
    movie_index += 1 
  end 
total 
end 


# def list_of_directors(source)
#   source.collect do |directors|
#     directors[:name]
#   end
# end

def list_of_directors(source)
  array = []
  director_index = 0 
  while director_index < source.length do 
    array << source[director_index][:name]
    director_index += 1 
  end
  array
end 

# def total_gross(source)
# total = 0 
# directors_totals(source).each do |key, value| 
#   total += value
# end 
# total
# end

def total_gross(source)
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
total = 0 
director_index = 0 
while director_index < list_of_directors(source).length do 
  total += directors_totals(source)[list_of_directors(source)[director_index]]
  director_index += 1 
end 
total
end
  


