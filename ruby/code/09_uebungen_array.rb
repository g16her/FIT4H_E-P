# 1. Legen Sie ein Array an mit den Zahlen 15 bis 20 an.
	puts "Aufgabe ....... 1"
		zahlen = (15..20).to_a
		puts zahlen 

# a. geben Sie diese Zahlen in einem Block aus
  puts "Aufgabe ...... a"
		zahlen.each do |b|
			puts b
		end
	# b. geben Sie die Zahlen mit dem Index etwa so aus: Index: 0 - Wert: 15
	puts "Aufgabe......b"
		zahlen.each_with_index do |b,z|
			puts " Index #{z} - Wert #{b}"
		end

# c. erzeugen Sie in einem Block einen Hash, wobei Sie die Arraywerte als Index nutzen und als Wert eine Zufallszahl zwischen 100 und 200 speichern.
	puts "Aufgabe------C"
		der_hash = Hash.new
		zahlen.each do |b|
		der_hash[b] = rand(100..200)
		end

# d. Geben Sie diesen Hash anschließen etwa so aus: Index: 15 - Wert: 121
		
	puts "Aufgabe-------D"
		der_hash.each do |myKey,myVal|
			puts " Index #{myKey} - Wert #{myVal}"
		end

# e. Ergänzen Sie die Ausgabe. Wenn der Wert größer als 150 ist, dann sieht die Ausgabe aus:  Index: 15 - Wert: 151. WOW
	puts "Aufgabe--------e"
		der_hash.each do |myKey,myVal|
			if myVal >  150
			puts " Index #{myKey} - Wert #{myVal} WOW"
			else
			puts " Index #{myKey} - Wert #{myVal}"
		end
	end
# f. Durchlaufen Sie das Array und speichern Sie die Quadratzahlen in einem Array
	puts " AUFGABE-----F" 
	sec_array = Array.new
	zahlen.each do |val|
		sec_array << val * val
	end
	puts sec_array


# g. ! Durchlaufen Sie das Array und speichern Sie die Quadratzahlen in einem Hash mit der Zahl als Schlüssel
	puts " AUFGABE-----G"
sec_hash = Hash.new
	zahlen.each do |z|
		sec_hash[z] = z * z
	end
	puts sec_hash
	
# Zusatz Zahlen im Array und im Hash:
# a. Legen Sie ein Array an mit 10 Primzahlen. Die Ausgabe des Arrays erzeugt:
# 	1 ist einstellig
# 	3 ist einstellig
# 	...
# 	11 ist zweistellig
#   ...
 primzahlen = [1,2,3,5,7,11,13,17,19,23]
# primzahlen.each do |p|
# 	if p.to_s.length < 2
# 		puts "#{p} ist einstellig"
# 	elsif p.to_s.length < 3 && p.to_s.length > 1
# 		puts "#{p} ist zweistellig"
# 	else
# 		puts "#{p} ist zweistellig"
# 	end
# end
# words = ["leer", "Ein", "Zwei"]
# 10.times do |var3|
# 	puts "#{primzahlen[var3]} ist #{words[primzahlen[var3].to_s.length]}stellig"
# end
# b. Legen Sie zur Übung einen Hash personen an, mit den keys vorname, nachname, stadt und den Werten Theo, Sommer, Lodz. Machen Sie eine Ausgabe, die 'vorname: Theo + neue Zeile' ausgibt
# person = { vorname: "Theo", nachname: "Sommer", stadt: "Lodz"}
# person.each do |key,val|
# 	puts "#{key.capitalize}: #{val}\n"
# end

# c. Fortsetzung Aufgabe a: 
# Speichern Sie beim Durchlaufen des Arrays die Werte in einem Hash mit der Bezeichnung prims, sodass die jeweilige Primzahl den Schlüssel bildet und der Wert den Text 'ist einstellig', 'ist zweistellig'
# prims = Hash.new
# primzahlen.each do |p|
# 	prims[p] = p.to_s.length < 2 ? " ist einstellig" : " ist zweistellig"
# end
# puts prims

# d. Sortieren Sie den Hash, sodass die Ausgabe folgendermaßen möglich wird:
# Einstellig: 1,3,5 ..
# Zweistellig: 11, 13, ..
#VERSION 2***********************************************
# eins = ""
# zweis = ""

# primzahlen.size.times do |i| 
# 	prims = Hash["key" => primzahlen[i], 
# 								"wert" => if primzahlen[i] > 9 
# 														"ist zweistellig" 
# 													else "ist einstellig"
# 													end]

# 	if prims['wert'] == "ist einstellig"
# 	eins += "#{prims['key']},"
# 	else
# 	zweis += "#{prims['key']},"
# 	end
# 	puts prims
# end

# puts "Einstellig: #{eins} \nZweistellig: #{zweis}"
#**********************************************************


# e. Fortsetzung Aufgabe b: 
# Speichern Sie den Hash in dem Array adressen und legen Sie zwei weitere Hashes personen mit den gleichen Keys und anderen Werten an. Durchlaufen Sie das Array, sodass folgende Ausgabe erfolgt.
# 1.Person:
# Name: Theo
# Vorname: Sommer
# Stadt: Lodz
# 2. Person:
# ......

person = { vorname: "Theo", nachname: "Sommer", stadt: "Lodz"}
addressen = [person]
person = { vorname: "Peter", nachname: "Pan", stadt: "New York"}
addressen << person
person = { vorname: "Ludmilla", nachname: "Szenurji", stadt: "Peking"}
addressen << person
#puts addressen
i = 1
puts "#{addressen[0][:vorname]} #{addressen[1][:nachname]}"
addressen.each do |var|
	puts "#{i.to_s}. Person"
	var.each do |key,val|
		puts "#{key.capitalize}: #{val}\n"
	end
	i +