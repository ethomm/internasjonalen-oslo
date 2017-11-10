Rails.application.routes.draw do

  resources :contactpeople, except: [:show, :index]
  resources :tekniskitems
  resources :tekniskcategories
  resources :bookingimages
  resources :bookings
  resources :utleies, only: [:edit, :update]
  resources :globalsettings, only:[:edit, :update]
  resources :drinks, except: [:show, :index]
  resources :omosses, only:[:edit, :update]
  resources :categories, :as => 'meny', :path => 'meny', only: [:show]
  resources :categories, except: [:show]

  root 		'pages#home'
  get 		'omointernasjonalen'			     =>	  'pages#about'
  get     'kontakt'                      =>   'pages#kontakt'
  get     'tekniskespsifikasjoner'       =>   'pages#tekniskespsifikasjoner'
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
  get     'administrator/booking'        =>   'administrator#booking'
  get     'administrator/editbooking'    =>   'administrator#edit_booking'


  resources :users, except:[:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
