Rails.application.routes.draw do
  root 'home#index'

  resources :questions, only: [:index]

  resources :users, only: [:index, :create]
  get '/profile', to: "users#show"

  resources :user_questions, only: [:create, :edit, :update]
  # patch '/profile/edit', to: "users#update"

  # resources :users, only: [:update] do
  #   resources :questions, only: [:update] do
  #     patch '/profile/edit', to: "users#update", as: :profile_comment
  #   end
  # end

  get 'users/new', to: "users#new", as: :create_user

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
end
