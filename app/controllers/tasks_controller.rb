class TasksController < ApplicationController
before_action :authenticate_user!, :only => [:create]

	def index 
		@task = Task.new
		@tasks = current_user.tasks.order(created_at: :desc)
	end

	def new 
	end 

	def create 

		@task = Task.new
		@task.description = params[:task][:description]
		@task.user_id = current_user.id 
		@task.save
		debugger
		if @task.save
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
		params.require(:task).permit(:description, :user_id)
	end
end
