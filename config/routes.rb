Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  root to: 'home#index'

  get 'home', to: 'home#index'
end
