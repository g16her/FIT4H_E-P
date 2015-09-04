str ="Die Woche bestetht aus :\n\t Montag \n\tDeinstag."
puts str

zahl = 15
puts zahl 
#puts konvertiert eine Zahl in einen String, besser ist aber eine explizite Konvertierung

#Zusammengestezte String:
puts str + zahl.to_s

puts "#{str} der #{zahl}. im Monat"

tag="Freitag"
 puts "Heute ist #{tag}, der #{Time.new}"
3.times do 
	puts str
end

