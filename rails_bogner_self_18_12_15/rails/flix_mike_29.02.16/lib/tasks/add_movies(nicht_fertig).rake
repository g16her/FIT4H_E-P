namespace :import do 
	desc "Filme hinzügen"
	task add_movies => :environment do 
		path = Rails.root.to_s + '/docs/data.csv'
		file = File.open(path, "r")
		while !file.eof?
			line = file.readline
			items = line.split(";")
			Movie.create(how_heard: )
			
		end
	end
end
