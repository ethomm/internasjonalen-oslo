Rails.application.routes.draw do
  

  resources :globalsettings, only:[:edit, :update]
  resources :drinks, except: [:show, :index]
  resources :categories
  resources :omosses, only:[:edit, :update]
  root 		'pages#home'
  get 		'about'			                   =>	  'pages#about'
  get 		'login' 		                   =>	  'sessions#new'
  post		'login' 		                   => 	'sessions#create'
  delete	'logout'		                   =>	  'sessions#destroy'
  get 		'administrator'	               =>	  'administrator#index'
  get     'administrator/aldersgrense'   =>   'administrator#aldersgrense'
  get     'administrator/kontaktinfo'    =>   'administrator#kontaktinfo'
  get     'administrator/apningstider'   =>   'administrator#apningstider'
  get     'administrator/hjelp'          =>   'administrator#help'
  get     'administrator/meny'           =>   'administrator#meny'
  get     'administrator/menykategori'   =>   'administrator#menykategori'

  resources :users, except:[:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
