Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :users

  get 'home', to: 'home#index'
  get 'user', to: 'users#show'

  resources :categories


end
