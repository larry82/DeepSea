Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	devise_for :users
	
	root 'playground#main'
	
	get :start , controller: :playground

	post :click_creature, controller: :map_interactions

	resources :characters,only: [:create]
end
