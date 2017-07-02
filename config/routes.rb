Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks"}
	resources :tasks, except: [:destroy, :index, :update]

 root 'tasks#index'

 patch '/tasks/:id' => "tasks#update", as: :update_task
 delete "/tasks/:id" => "tasks#destroy", as: :delete_task
end
