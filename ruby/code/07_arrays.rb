# a. legen Sie zur uebung auf der irb ein Array jahreszeiten mit den Elementen: Sommer, Herbst, Winter an; sowohl in der Langform, als auch der Kurzform
jz = %w(Sommer Herbst Winter)

# b. lassen Sie ausgeben wieviele Elemente das Array enthaelt, welche Jahreszeit die zweite im Array ist
jz.size
jz.count

# c. fuegen Sie das Element fruehjahr hinzu
jz << "Frühjahr"

# d. entfernen Sie das Element wieder aus dem Array
jz.pop

# e. ermitteln Sie mit Hilfe von ri, wie join Ihnen bei einer folgendermassen formatierten Ausgabe behilflich sein kann: Sommer und Herbst und Winter
jz.join(" und ")

# f. notieren Sie den Befehl

# g. ermitteln Sie den Befehl mit dem Sie die Positionen der Elemente des Arrays nach einem Zufallsprinzip anordnen koennen
jz.shuffle!

# h. packen Sie Ihre drei Player aus dem Projekt in ein Array
players =[player1, player2]
# # i. Geben Sie Player mit einer Iteration über das Array aus. Beginnen Sie mit einer Zeile, in der sie die Anzahl der Mitspieler notieren

players.each do | var |
	puts var 
end
