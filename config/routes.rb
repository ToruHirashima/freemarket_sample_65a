Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
  end
  root to: 'items#index'
  resources :items, except: [:index] do
    resources :orders  # only: [:new] としても良さそうですが一旦全アクションを実装
  end
  resources :users, only: [:index, :show]
end
