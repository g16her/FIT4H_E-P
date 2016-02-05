class ProjectsController < ApplicationController

	before_action :set_project , only: [:edit , :show ,  :update, :destroy] 
	def create

		@project = Project.new( permitted_params )
			if @project.save
				flash[ notice ] = "Project succsesfull)"
		redirect_to root_path ## redirect (automatischer LINK!weißt automatisch der root path seite zu
			else
				render "new"
			end
	end

	def destroy
			@project.destroy
			redirect_to root_path ## 
	end

	def edit 

	end

	def index

		@projects = Project.all

	end

	def new

		@project = Project.new

	end

	def show

		

	end

	def update
		if @project.update( permitted_params)
		flash[ notice ] = "Project succsesfull)"
		redirect_to project_path( @project.id)

		else
				render "edit"

		end
	end

private ## erlaubnis geben
	def permitted_params 
		params.require( :project ).permit( :title , :description , :start_date)
		
	end

	def set_project


		@project = Project.find( params[ :id ]) 
		
	end


end
