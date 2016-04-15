Rails.application.routes.draw do
  root 'home#index'
  resources :questions, only: [:index]

  get 'users/new', to: "users#new", as: :create_user
end
