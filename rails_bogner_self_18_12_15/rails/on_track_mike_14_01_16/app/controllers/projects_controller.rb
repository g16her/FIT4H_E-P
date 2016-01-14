class ProjectsController < ApplicationController
	def index
		@projects = Project.all
	end

	def new
		@project = Project.new
	end

	# def showall
	# 	@projects = Project.all
	# end

	def show
		@project = Project.find(params[:id])
	end

	def create
		@project = Project.new(project_params)
		@project.save
		redirect_to root_path
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])
		@project.update(project_params)
		redirect_to project_path(@project.id)
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
		redirect_to root_path
	end

	private
		def project_params
			params.require(:project).permit(:title, :description, :start_date)
		end

end
