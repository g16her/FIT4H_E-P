Rails.application.routes.draw do
	root to: 'authors#index'
	root to: 'projects#index'
  resources :projects do
  	resources :tasks
  end
  
  
end
