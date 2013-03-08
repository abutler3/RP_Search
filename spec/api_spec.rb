require_relative "../lib/api"
require "ostruct"

describe Api do

  it "should search for movies" do
    movie = Api.search_by_title("Forrest Gump")
    movie.title.should eq("Forrest Gump")
  end
end
