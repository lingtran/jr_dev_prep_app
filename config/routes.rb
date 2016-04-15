Rails.application.routes.draw do
  root 'home#index'
  resources :questions, only: [:index]
  resources :users, only: [:index, :create]
  get 'users/new', to: "users#new", as: :create_user
end
