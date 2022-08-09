Rails.application.routes.draw do
  root to:'sessions#new'

  get 'signup' , to: 'users#new', as: 'signup'
  get 'login' , to: 'sessions#new', as: 'login'
  get 'logout' , to: 'sessions#destroy', as: 'logout'
  get 'inicial/index'
  resources :users, only: %i(new create)
  resources :sessions
  resources :tipo_mineracaos
  resources :moedas
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
