class TasksController < ApplicationController
before_action :authenticate_user!, :only => [:create]

	def index 
		@task = Task.new

		@tasks = current_user.tasks.reorder("created_at DESC").page(params[:page]).per_page(12)

# 		@tasks = current_user.tasks if current_user

# 		@tasks.order(created_at: :desc) if current_user


# @photos = Photo.reorder("date DESC").page(params[:page]).per_page(12)
		
	end

	def new 
	end 

	def create 
		@task = Task.new
		@task.description = params[:task][:description]
		@task.user_id = current_user.id 
		@task.save

		respond_to do |format|
		format.html {redirect_to root_path}
		format.js 
		end

	end 

	def destroy
		respond_to do |format|
		format.html {redirect_to root_path}
		format.js
		end

		@task = Task.find(params[:id])
		@task.destroy

	end

	def edit 
		@task = Task.find(params[:id])
	end

	def update
		@task = Task.find(params[:id])
		@task.update_attributes(task_params)
		redirect_to root_path
	end



	private 
	def task_params
		params.require(:task).permit(:description, :user_id, :completed?)
	end


end
