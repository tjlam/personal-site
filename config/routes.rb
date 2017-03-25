Rails.application.routes.draw do
	get 'pages/index'
	post '/send_email', to: 'pages#send_email', as: 'send_email'
	resources :pages
	root 'pages#index'
end
