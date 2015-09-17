# Einrichten einer Kundenklasse.

# Eine Klasse customer soll eingerichtet werden.
class Customer


# Beim Anlegen eines Customer-Objektes muss als notwendiger Parameter eine Kontonummer (Instanzvariable bank_account) eingegeben werden.
def initialize(plastname,kontonummer,Vorname
		@bank_account = kontonummer 
		@plastname = plastname	
		@pvorname = Vorname


	end

end

# Optional kann auch der Nachname des Kunden (lastname) eingegeben werden.

# Erstellen Sie SET und GET - Methoden für die Eigenschaften (Instanzvariablen) firstname, street, city. Z.B heisst die Set-Methode fuer street: set_street(pstreet)


# Eine Methode print_address soll beim Aufruf "puts obj.print_address' eine Ausgabe wie folgt erzeugen:
# Konto:................9999
# Name:.................Theo Lodgz
# Strasse:..............Hermelinweg 7
# Ort:..................22159 Hamburg

def print_adress
	puts "konto#{@bank_account.rjust(40, '.')}"
	puts "Name"
	puts "Straße"

end


# Legen Sie das Objekt obj an, rufen Sie die entsprechenden Get-Methoden für die Dateneingabe auf, erzeugen Sie die Kontrollausgabe.