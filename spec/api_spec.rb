require_relative "../lib/api"
describe Api do

  it "should search for movies" do
    movie_hash = Api.search_by_title("Forrest Gump")
    movies = movie_hash.fetch("movies")
    puts movies.inspect
    movies.first.title.should eq("Forrest Gump")
  end
end
