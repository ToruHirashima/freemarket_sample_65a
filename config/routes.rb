Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  resources :items, except: [:index] do
    resources :orders  # アクションは後日絞り込み（newのみで良いと思われる）
  end
  resources :users, only: [:index, :show]
end
