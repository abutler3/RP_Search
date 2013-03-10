require_relative "../lib/movie"
# require_relative "../lib/api"


describe Movie do

  it "should store the title, year, and score" do
    movie = Movie.new(id: "the-id", title: "the-title", year: 1998, score: 50)
    movie.id.should eq("the-id")
    movie.title.should eq("the-title")
    movie.year.should eq(1998)
    movie.score.should eq(50)
  end


  # it "should return a movie when searched" do
  #   movie = Movie.search("Forrest Gump")
  #   Api.search_by_title(title)
  #   puts movie.inspect
  #   movie.title.should eq("Forrest Gump")
  # end
end
