Rails.application.routes.draw do
  

  resources :drinks
  resources :categories
  resources :omosses, only:[:edit, :update]
  root 		'pages#home'
  get 		'about'			=>	'pages#about'

  get 		'login' 		=>	'sessions#new'
  post		'login' 		=> 	'sessions#create'
  delete	'logout'		=>	'sessions#destroy'
  get 		'administrator'	=>	'administrator#index'

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
