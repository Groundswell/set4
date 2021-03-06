Rails.application.routes.draw do

  get '/about', to: 'swell_media/static#about', as: 'about'

	devise_scope :user do
		get '/login' => 'sessions#new', as: 'login'
		get '/logout' => 'sessions#destroy', as: 'logout'
		get '/register' => 'registrations#new', as: 'register'
	end
	devise_for :users, :controllers => { :omniauth_callbacks => 'oauth', :registrations => 'registrations', :sessions => 'sessions' }


	mount SwellMedia::Engine, :at => '/'

end