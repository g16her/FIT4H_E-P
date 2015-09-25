# a. erstellen Sie eine Klasse Game mit einem Konstruktor, der eine Instanzvariable title anlegt und fuellt und ein leeres Array mit dem Name Player enthaelt.
# b. die Klasse Game hat eine Methode add_player der ein Spieler hinzugefuegt wird
# c. eine Methode play erzeugt folgenden Ausdruck:

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

player1 = Player.new('Ralf',100)
player2 = Player.new('Jürgen',4)
player3 = Player.new('Theo',45)

ga=Game.new("call")
ga.add_player(player1)
ga.add_player(player2)
ga.add_player(player3)
ga.play

