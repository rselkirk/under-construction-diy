Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'projects#index'

  resources :projects do
    resources :reviews, only: [:create]
  end

  resources :users, only: [:create, :show, :edit, :update]
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  
  resources :sessions
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


  resources :reviews, only: [:destroy]
end
