class Playlist
	def initialize(name)
			@name = name
			@movies = []
	end 

	def add_movie(movie)
		@movies << movie 
	end
	def play
			puts "#{@name} 'Playlist"
			@movies.each do |movie|
				puts movie
			
			end
	end
	def to_s
			puts @movies.size.to_s
		end
end

