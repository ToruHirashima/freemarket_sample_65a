Rails.application.routes.draw do

  devise_for :users
  root to: 'items#index'
  resources :items do
    resources :orders  # only: [:new] としても良さそうですが一旦全アクションを実装
  end
  resources :users, only: [:index, :show]
end
