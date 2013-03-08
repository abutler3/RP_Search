require "open-uri"
require "json"
require "ostruct"
class Api

  APIKEY = "cdz6mev7zywr529nreq98fhm"

  def self.search_by_title(title)
    url = "http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=#{APIKEY}&q=#{URI.encode(title)}&page_limit=1"
    full_json = JSON.parse(open(url).read)
    first_movie = full_json.fetch("movies").first
    OpenStruct.new(first_movie)

  end
end
