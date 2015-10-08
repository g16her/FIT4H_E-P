class Player
 	attr_reader :health
 	attr_accessor :name
	
	def initialize(name, health = 100)
		@name = name
		@health = health
	end
	def blam
			@health -= 10
			puts "blam"
	end

	def w00t
		@health += 10
		puts "w00t"
	end

	def to_s

		 "Der Spieler heißt #{@name} und sein Leben beträgt #{@health}"
			
	end
	

end
