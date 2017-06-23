class TasksController < ApplicationController
	def index 
		@task = Task.new
		@tasks = Task.all
	end

	def new 
	end 

	def create 
		@task = Task.create(task_params)
		if @task 
			flash[:success] = "Successfully added a task"
			redirect_to root_path

		else
			flash[:danger] = "Failed to create new task"
			redirect_to root_path 
		end
	end 

	def show 
	end

	private 
	def task_params
		params.require(:task).permit(:description)
	end
end
