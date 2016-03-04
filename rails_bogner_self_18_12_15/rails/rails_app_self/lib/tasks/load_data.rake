namespace :import do
	desc "Dateieinlesen"
	task :load_data => :environment do
			path = Rails.root.to_s ü + "/docs/data.csv"
			file = File.open(path, "r")
			while ! file.eof?
				line = file.readline
				items = line.split(";")
				Registration.create(how_heard: items[0], event_id: items[1], user_id: items[2])


			end

	end
	
end