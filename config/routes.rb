Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:  'pages#home'

  resources :tweets, only: :create
  resources :users, only: [:index, :show]
  resources :relationships, only: [:create, :destroy]
end
