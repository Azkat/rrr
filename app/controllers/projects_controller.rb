class ProjectsController < ApplicationController

<<<<<<< HEAD
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to project_path
    else
      render 'edit'
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  private

  def project_params
    params[:project].permit(:title)
  end

  def set_project
    @project = Project.find(params[:id])
  end

=======
	before_action :set_params, only: [:show, :destroy, :edit]

	def index
		@projects = Project.all
	end

	def show
		@tasks = Task.where(project_id: @project.id)
		Rails.logger.level = Logger::DEBUG
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

>>>>>>> fcd4a41bf851c77425e3cca268b1a2577f7bb543
end
