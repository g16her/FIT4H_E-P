epro
# 2. Worte
# a. Bilde ein Array mit den Worten: Pflaume, Bauschaum, Auster
# b. Alle Element, die den String aus enthalten sollen ausgegeben werden.
# c. erzeugen eine Ausgabe nach der Länge der Worte von klein nach groß
# d. Ein Hash wird ausgegeben, das Wort als Index, die Anzahl der Buchstaben als Wert

liste = %w(Pflaume Bauschaum Auster)
# var = liste.select do |a|
# 		a.downcase.include?("aus") 
# 	end
# puts var

# liste.each do |a|
# 	if a["aus"] == 'aus'
# 		puts a
# 	end
# end

# sortiert = liste.sort_by do |a|
# 	a.length
# end

# puts sortiert

# myHash = Hash.new
# liste.each do |l|
# 	myHash[l] = l.length
# end
# puts myHash

# 3. Lottogenerator:
# a. Schreiben Sie einen kleinen Lottozahlengenerator. Es sollen 7 Zahlen aus 49 Möglichkeiten in einem Array ausgegeben werden.
# b. Peter, Paul und Mary bilden einen Hash, etwa derart: lotto = { "Peter" => [ 2,22,33,11,23,32,26 ], ...}

# lotto =[] # MArvin Lösung
# 7.times do
# 	z =rand(1..49)
# 	while lotto.include?(z)
# 		z=rand(1..49)
# 	end
# 	lotto << z 
# end

#puts lotto.sort

# puts lotto =(1..49).to_a.sample(7).sort # lösung Rene

lotto_hash = Hash.new
%w(Peter Paul Mary).each do |vname| 
	lotto_hash[vname] = (1..49).to_a.sample(7).sort
end

puts lotto_hash


