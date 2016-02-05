class Project < ActiveRecord::Base
	has_many :tasks # gegenstück zu belongs to project.rb 1 zu n many_task ====1

	
	validates :title , presence: true


end
