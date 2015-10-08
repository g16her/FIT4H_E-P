require_relative 'movie'
require_relative 'playlist'



movie1 = Movie.new('NinjaTurtles',4)
movie2 = Movie.new('45 years',8)
movie3 = Movie.new('8 mm',10)
pl = Playlist.new("Theo")
pl.add_movie(movie1)
pl.add_movie(movie2)
pl.play









# def movie_listing(title,rank=10)
# 	"Movie: #{title.downcase.capitalize} hat #{weekday} das Ranking #{rank}"
# end

# def weekday

# 	Time.now.strftime("%A")

# end

# puts movie_listing("Ninja Turtles",4)
# puts movie_listing("SWAT",3)

# Beispiel für Variablen innerhalb von Methoden
# def movie_listing
# 	var = "Movie: Ninja Turtles"
# 	puts "var innerhalb Methode: #{var.object_id}"
# 	var2 =" Movie: irgendein film"
# 	"#{var}\n#{var2}"
# end

# var = movie_listing
# puts "var ausserhalb: #{var.object_id}"
# puts "Rückgabewert #{var}"

