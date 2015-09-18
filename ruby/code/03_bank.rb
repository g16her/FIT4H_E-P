#Einrichten einer Kundenklasse.

#Eine Klasse customer soll eingerichtet werden.
#Schlüsselwort: class
#Auf Großbuchstaben bei Klassennamen achten
class Customer
	#Beim Anlegen eines Customer-Objektes muss als notwendiger Parameter eine Kontonummer (Instanzvariable bank_account) eingegeben werden.
	#Optional kann auch der Nachname des Kunden (lastname) eingegeben werden.
	#Konstruktor mit einem Pflichtparamter: pbank_account und einem optionalen Parameter plastname
	def initialize(pbank_account, plastname="")
		@bank_account = pbank_account
		@lastname = plastname.capitalize
	end
	#Erstellen Sie SET und GET - Methoden für die Eigenschaften (Instanzvariablen) firstname, street, city. Z.B heisst die Set-Methode fuer street: set_street(pstreet)
	#Settern und Gettern: Ermöglichung eines Zugriffs auf Attribute (Eigenschaften) einer Klasse
	#Attribute (Instanzvariable: @lastname) sind prinzipiell 'private', d.h. ein Zugriff auf diese Variablen ist nur innerhalb der Klasse möglich. Wenn ich von außerhalb einer Klasse auf eine Eigenschaft zugreifen möchte, muss ich vorher Setter, bzw. Getter definiert haben
	def set_firstname(pfirstname)
		@firstname = pfirstname.capitalize
	end
	def get_firstname
		@firstname
	end
		def set_lastname(plastname)
		@lastname = plastname.capitalize
	end
	def get_lastname
		@lastname
	end
	def set_street(pstreet)
		@street = pstreet
	end
	def get_street
		@street
	end
		def set_city(pcity)
		@city = pcity
	end
	def get_city
		@city
	end
	#Eine Methode print_address soll beim Aufruf "puts obj.print_address' eine Ausgabe wie folgt erzeugen:
	#Konto:................9999
	#Name:.................Theo Lodgz
	#Strasse:..............Hermelinweg 7
	#Ort:..................22159 Hamburg
	
	def print_address
		#"#{"Konto:".ljust(30,'.')}#{@bank_account}\nName:#{}"
		"Konto:".ljust(30,'.') + @bank_account + "\n" +
		"Name:".ljust(30,'.') + @firstname + " " + @lastname + "\n" +
		"Strasse:".ljust(30,'.') + @street + "\n" +
		"Ort:".ljust(30,'.') + @city
	end
end

#Legen Sie das Objekt obj an, rufen Sie die entsprechenden Get-Methoden für die Dateneingabe auf, erzeugen Sie die Kontrollausgabe.

obj = Customer.new("12345677", "Sommer")
obj.set_firstname("Theo")
obj.set_street("Luluweg 11")
obj.set_city("Berlin")
puts obj.print_address