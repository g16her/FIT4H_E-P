# a. machen Sie aus der Instanzvariablen @health ein lesbares Attribut
# b. geben Sie die Eigenschaft health des Objektes player1 aus
# c. die Eigenschaft name soll sowohl lesbar, als auch schreibbar sein
# d. erzeugen Sie ein virtuelles Attribut score, das den Wert von health addiert mit der Buchstabenlaenge des name -Attributes
# e. aendern Sie die to_s - Methode, zur Ausgabe des Score


class Player

		attr_reader :health
		attr_accessor :name

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

	def score
		@health + @name.length
	end



player1 = Player.new('Theo', 5)
player2 = Player.new('Peter')
# puts player1.name
# puts player1.health
# player1.name ="Willinald"
# puts player1.name
# puts player1.score
players =[player1, player2]
players.each do | var |
	puts var 
end

players.size.times do |i|
		puts players[i]
end

