class User < ActiveRecord::Base


  has_secure_password ##
  
  def self.authenticate(email , password ) ## methode  

  		user = User.find_by( :email => email )## abgleich Tabelle
  		user && user.authenticate( password )## abgleich Tabelle entschlüsselt datenbank mit authenticate


  	
  end
end
