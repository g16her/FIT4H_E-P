class Game
 	def initialize(title)
 		@title = title
 		@players = []
	end
 	def add_player(player)
 		
		@players << player
		
	end
 	def play 
	 	puts "Es sind #{@players.count} Spieler im dem Spiel #{@title}"
	 	@players.each do |player|
	 		puts player
 		end
 		@players.each do | player |
 			player.w00t
 		end
 		@players.each do | player |
 			player.blam
 		end
 	end
end