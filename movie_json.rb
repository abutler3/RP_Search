require_relative "lib/movie"
require_relative "lib/api"


def find_movie
  puts "OH HAI. Search?"

  movie_title = gets.chomp

  movie = Api.search_by_title(movie_title)

  puts "Found: #{movie_title}. Score: #{movie.score}"

  puts "Search again?"
end

find_movie

while true do
  puts "Search Again (Y/N)"
  answer = gets.upcase[0]
  if answer == "Y"
    find_movie
  else
    break
  end
end

