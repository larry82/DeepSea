Rails.application.routes.draw do
	root 'playgroud#main'
	get :start , controller: :playgroud
end
