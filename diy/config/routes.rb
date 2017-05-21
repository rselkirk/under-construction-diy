Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'projects#index'

  resources :projects do
    resources :reviews, only: [:create]
  end

  resources :users, only: [:create, :show]
  get '/signup' => 'users#new'
  
  resources :sessions
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'


  resources :reviews, only: [:destroy]
end
