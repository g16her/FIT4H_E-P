def say_hello(name)
	puts "Ich bin #{name}"
end

say_hello("Ludwig")
#----------------------------------------
def say_hello(name)
	puts "Ich bin #{name}"
end

say_hello("Ludwig")
say_hello("Wilhelm")
#----------------------------------------
def say_hello(name)
	"Ich bin #{name}"
end

puts say_hello("Ludwig")
#----------------------------------------
def say_hello(name, health = 100)
	"Ich bin #{name} mit einem Wert von #{health}"
end

puts say_hello("Ludwig")
#----------------------------------------
def say_hello(name, health = 100)
	"Ich bin #{name} mit einem Wert von #{health} um #{Time.now.strftime("%R")}"
end

puts say_hello("Ludwig")

#----------------------------------------

class Player
		def initialize(name, health = 100)
			@name = name
			@health = health
		end

		def say_hello
			"Ich bin #{@name} mit einem Wert von #{@health} um #{Time.now.strftime("%R")}"
		end

		def blam
			@health += 10
			"#{@name} got blamed"
		end

		def w00t
			@health -= 10
			"#{@name} got w00ted"
		end
end

player1 = Player.new("Ludwig", 110)
puts player1.say_hello
player2 = Player.new("Wilhelm")
puts player2.say_hello
puts player2.blam
players = player1.say_hello + "\n" +player2.say_hello
puts players