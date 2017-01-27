Rails.application.routes.draw do
	devise_for :users
	
	root 'playground#main'
	
	get :start , controller: :playground

	resources :characters,only: [:create]
end
