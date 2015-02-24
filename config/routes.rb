Rails.application.routes.draw do
  root to: 'home#show'

  # resources :users
  resources :messages
end
