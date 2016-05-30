class TasksController < ApplicationController
	def index
		@tasks = Task.all
	end

	def new
		@projects = Project.all
		@task = Task.new
	end

	def create
		@task = Task.new(task_params)
		if @task.save
			redirect_to project_path(id: @task.project_id)
		else
			render 'new'
		end
	end

	private
	def task_params
		params.require(:task).permit(:title, :project_id)
	end
end
