Rails.application.routes.draw do
  root 'home#index'
  resources(:questions, only: [:index])
end
