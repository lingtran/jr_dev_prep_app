Rails.application.routes.draw do
  root 'home#index'

  resources :questions, only: [:index]

  namespace :admin do
    resources :questions, only: [:index, :edit, :update, :new, :create]
  end

  resources :users, only: [:index, :create]
  get '/profile', to: "users#show"

  resources :user_questions, only: [:create, :edit, :update]

  get 'users/new', to: "users#new", as: :create_user

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
end
