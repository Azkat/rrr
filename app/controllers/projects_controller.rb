class ProjectsController < ApplicationController

	before_action :set_params, only: [:show, :destroy, :edit]

	def index
		@projects = Project.all
	end

	def show
		@tasks = Task.where(project_id: @project.id)
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		
		if @project.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
		
	end

	def destroy
		@project.destroy
		redirect_to root_path
	end


	private

	def project_params
		params.require(:project).permit(:title)
	end

	def set_params
		@project = Project.find(params[:id])	
	end

end
