class WorkedHoursController < ApplicationController
  def create
  	#Versuch 9
  	worked_hours.employee_id = @employee.id #varriablen deklaration
   	worked_hours.project_id = @project.id   #varriablen deklaration
	end
  
end
