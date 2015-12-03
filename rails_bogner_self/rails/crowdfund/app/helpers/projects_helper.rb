module ProjectsHelper

	def ein_mehrzhal
		if @projects.size ==1
			"Inhalt"
		else
			"Inhalte"
		end
	end
end
