# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Project.create(title: 'E-Commerce-App', description: 'Programmieren einer Webapplikation', start_date: Time.now, max_hours: 200)

Employee.create(vorname: 'Theo', nachname: 'Sommer', project_id: 1) # project_id: 1damit es dem ersten Project zu geordnet wird
Employee.create(vorname: 'Peter', nachname: 'Pan', 	project_id: 1) 