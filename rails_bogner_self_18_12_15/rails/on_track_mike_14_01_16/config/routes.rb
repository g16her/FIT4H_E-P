Rails.application.routes.draw do
	root to: 'projects#index'
	resources :users
	resources :projects do
	  resources :tasks
	end
end
