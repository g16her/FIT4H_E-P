class Employee < ActiveRecord::Base
  belongs_to :project

  validates	:nachname, presence: true # nachname darf nicht leer sein


  def namekomplett
				         vorname.capitalize + " " + nachname.capitalize # methode vor und nachname mit leerzeichen
				end

end
