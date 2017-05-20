Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'projects#index'

  resources :projects do
    resources :reviews, only: [:create]
  end

  resources :sessions, only: [:new, :create, :destroy]
  resources :users, except: [:index]

  resources :reviews, only: [:destroy]
end
