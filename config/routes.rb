Rails.application.routes.draw do
  devise_for :users
	resources :tasks, except: [:destroy, :index]
 root 'tasks#index'

 delete "/tasks/:id" => "tasks#destroy", as: :delete_task
end
