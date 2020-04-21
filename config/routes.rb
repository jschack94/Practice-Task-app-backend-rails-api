Rails.application.routes.draw do
	resources :users, only: [:index, :create, :show]
	resources :notes, only: [:create, :update, :destroy]
	resources :tags, only: [:index]

	
	post '/auth', to: 'auth#create'
	get '/current_user', to: 'auth#show'
end