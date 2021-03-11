Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :users

  get 'home', to: 'home#index'
  get 'user', to: 'users#show'

  resources :categories

  resources :quizzes do
    member do
      post :start
    end
    resources :questions, shallow: true do
      resources :answers, shallow: true
    end
  end

  resources :quiz_passages, only: %i[show update] do
    member do
      get :result
    end
  end


end
