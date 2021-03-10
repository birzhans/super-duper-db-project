Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :users

  get 'home', to: 'home#index'
  get 'user', to: 'users#show'

  resources :categories

  resources :quizzes do
    resources :questions, shallow: true do
      resources :answers, shallow: true
    end
  end


end
