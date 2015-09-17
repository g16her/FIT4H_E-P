class Movie
	def initialize(ptitle, prank=0)
		@title = ptitle.capitalize
		@rank  = prank		
	end 
	#def title
	#		@title
	#end
	attr_reader :title

	#def title=(ptitle)
	#		@title = ptitle
	#end
	attr_writer :title
	def thumbs_up
		@rank +=1
		#@rank = @rank +1
	end
		def thumbs_down
			@rank -=1
		end
	def to_s
	"#{@title} hat ein Ranking von: #{@rank}."
	end
end

movie1 = Movie.new('NinjaTurtles',4)
puts movie1.to_s
movie1.thumbs_up
puts movie1.to_s

puts movie1.title

movie1.title ="NinjaPurples"
puts movie1







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

