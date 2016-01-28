# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create(title:"Entwickeln und Programmieren" , description: "Programmieren mit Rails" , start_date: Date.today)

Project.create(title:"Entwickeln und Programmieren" , description: "Programmieren mit Peter" , start_date: Date.today)

Project.create(title:"Entwickeln und Programmieren" , description: "Programmieren mit Ruby" , start_date: Date.today)



#rake db:seed macht die Seeds Dateneinträge dazu 
#rake db:setup löscht alles und bezieht sich auf die seeds



