Rails.application.routes.draw do  
  devise_for :users
  get 'persons/profile'

  resources :todo_lists do
  	get 'persons/profile', as: 'user_root'
  	resources :todo_items do
  		member do
  			patch :complete
  		end
  	end
  end
  root 'todo_lists#index'
end
