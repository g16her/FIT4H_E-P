# a. erstellen Sie eine Klasse Game mit einem Konstruktor, der eine Instanzvariable title anlegt und fuellt und ein leeres Array mit dem Name Player enthaelt.
# b. die Klasse Game hat eine Methode add_player der ein Spieler hinzugefuegt wird
# c. eine Methode play erzeugt folgenden Ausdruck:

require_relative 'game'
require_relative 'player'

player1 = Player.new('Ralf',100)
player2 = Player.new('Jürgen',4)
player3 = Player.new('Theo',45)

ga=Game.new("call")
ga.add_player(player1)
ga.add_player(player2)
ga.add_player(player3)
ga.play

