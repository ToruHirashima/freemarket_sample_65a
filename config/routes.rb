Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  resources :items, except: [:index]
  resources :users, only: [:index, :show]
end
