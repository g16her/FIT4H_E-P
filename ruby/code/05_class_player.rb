class Player
	def initialize(name, health = 100)
		@name = name
		@health = health
	end

	def say_hello 
	 	"Ich bin #{@name} mit einem Wert von #{@health}" 
	end

	def blam
			@health -= 10
			puts "#{@name} got blamed"
	end

	def w00t
		@health += 10
		puts "#{@name} got w00ted"
	end
end

player1 = Player.new('Ralf', 100)
player2 = Player.new('Jürgen')
players = player1.say_hello, player2.say_hello
puts players