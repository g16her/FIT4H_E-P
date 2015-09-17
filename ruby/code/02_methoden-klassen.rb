#a
def say_hello(name)
	puts "Ich bin #{name}"
end

say_hello("Ludwig")
#----------------------------------------
#b
def say_hello(name)
	puts "Ich bin #{name}"
end

say_hello("Ludwig")
say_hello("Wilhelm")
#----------------------------------------
#c
def say_hello(name)
	"Ich bin #{name}"
end

puts say_hello("Ludwig")
#----------------------------------------
#d
def say_hello(name, health = 100)
	"Ich bin #{name} mit einem Wert von #{health}"
end

puts say_hello("Ludwig")
#----------------------------------------
#e
def say_hello(name, health = 100)
	"Ich bin #{name} mit einem Wert von #{health} um #{Time.now.strftime("%R")}"
end

puts say_hello("Ludwig")

#----------------------------------------
#KLASSEN
#a
class Player
		def initialize(name, health = 100)
			@name = name
			@health = health

		end


		def to_s
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
#puts player1.say_hello
player2 = Player.new("Wilhelm")
#puts player2.say_hello
puts player2.blam


#Klassen 

#Klassen:
#a. erstellen Sie eine Klasse mit der Bezeichnung Player
class Player

#b. erstellen Sie ein Objekt player1 der Klasse
#player1 = Player.new
#c. erstellen Sie eine initialize - Methode, die die Parameter name und health hat und aus diesen Werten die Instanzvariablen @name und @health initialisiert
def initialize(pname,phealth=100)
	@name = pname
	@health = phealth
end
def to_s
		"ich bin #{@name} mit einem wert von #{@health}"
	end
	def blam
		@health -=10
		puts "#{@name} wurde geblamt"
	end

	def w00t
		@health +=10
		puts "#{@name} wurde gew00t: #{@health}"
	end

end
#d. updaten Sie das Objekt player1 und lassen sich das objekt anzeigen
player1 = Player.new('Theo', 5)
puts player1

#e. setzen Sie fuer health einen Standardwert 100
#f. legen Sie eine neues Objekt player2 an, das nur den Namen als Parameter hat
player2 = Player.new('Peter')
puts player2
#g. passen Sie die say_hello - Methode aus der vorherigen Übung zur Ausgabe ein, so dass puts player1.say_hello die Ausgabe ergibt
#puts player1.say_hello
#puts player2.say_hello
player1.blam
player2.w00t
#h. fuegen Sie eine Instanzmethode blam und w00t hinzu, die den Wert fuer health umd 10 hochsetzt, bzw. reduziert und ausgibt: Tom got blamed, bzw. w00ted.
#i. die say_hello - Methode soll aufgerufen werden, wenn nur das Objekt ausgegeben werden soll, also puts players erfolgt.