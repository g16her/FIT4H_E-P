# 1.  Klasse Kunde
class Kunde

	attr_accessor : name
	attr_writer : adresse





# 1a. Legen Sie eine Eigenschaft name und adresse in der Klasse Kunde an. Für die Eigenschaft name gibt es einen Lese- und Schreibzugriff, fuer die Eigenschaft adresse einen Schreibzugriff. 
def initialize(name, adresse)
		@name = []
	
	end
end
# b. Die Eigenschaft name enthält den Vor- und Zunamen des Kunden. Diese Eigenschaft wird beim Anlegen des Objektes übergeben. Schreiben Sie den entsprechenden Konstruktor.


# c. Erzeugen Sie ein Objekt mit dem Namen 'kunde1' und dem Initialwert: 'Theo Sommer' 

# d. Ändern Sie die Eigenschaft 'name' des Objektes in: 'Theo Sonnenschein' 
# e. Schreiben Sie den Befehl, der den Namen auf der Konsole ausgibt. 
# f. Fügen Sie der Klasse Kunde die Eigenschaft gehalt hinzu, die sowohl gelesen als auch geschrieben werden kann. Schreiben Sie den Befehl auf, der den Wert von 'gehalt' des Objektes auf 2000 setzt. 
# g. Die Eigenschaft adresse bekommt folgenden String uebergeben: Hermelinweg 11, 22159 Hamburg
# h. Schreiben Sie eine  Getter-Methode' für die Klasse Kunde, für die Eigenschaft adresse die folgende Ausgabe produziert: 'Theo Sonnenschein, Hermelinweg 11, 22159 Hamburg.'  und geben sie das auf der Konsole aus.
# i. Zusatz optional: Sichern Sie, dass im String Theo Sonnenschein sowohl Theo, als auch Sonnenschein jeweils mit einem Grossbuchstaben beginnen

# 2. Klasse Kredit 
# a. Legen Sie eine Klasse Kredit an, mit der Eigenschaft kunde (ohne Setter und Getter) und einem Konstruktor, der die Eigenschaft kunde füllt. Erzeugen Sie ein Objekt kredit1, dem Sie das bereits existierende Objekt kunde1 übergeben.
# b. Legen Sie eine Getter-Methode für die Eigenschaft kunde an, die folgende Ausgabe erzeugt: 'Theo Sonnenschein, Hermelinweg 11, 22159 Hamburg. Jahresgehalt: 24000 Euro.' 
# c. Fügen Sie eine Eigenschaft kredit hinzu, auf die lesend und schreibend zugegriffen werden kann. Speichern Sie für das bestehende Objekt in der Eigenschaft kredit den Wert 5000. 