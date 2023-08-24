require "open-uri"
require "json"

url = "http://tmdb.lewagon.com/movie/top_rated"
movies_serialized = URI.open(url).read
movies = JSON.parse(movies_serialized)["results"]
i = 0

20.times do
      movie = Movie.new(
      title: movies[i]["title"],
      overview: movies[i]["overview"],
      poster_url: "https://image.tmdb.org/t/p/original#{movies[i]['poster_path']}",
      rating: movies[i]["vote_average"]
    )
    movie.save
    i += 1
end
