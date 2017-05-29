Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'search#search'

  get 'tags/:tag', to: 'projects#index', as: :tag
  get "/scrape" =>"projects#scrape"

  resources :projects do
    resources :reviews, only: [:create]
    resources :project_statuses, only: [:update]
  end

  get 'search', to: 'search#search'

  resources :users, only: [:create, :show, :edit, :update]
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  resources :sessions
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


  resources :reviews, only: [:destroy]
end
