Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
  end
  root to: 'items#index'
  namespace :items do
    resources :searches, only: :index
  end
  resources :items, except: [:index] do
    resources :orders, only: [:new, :create, :show]
    resources :comments, only: [:create]
    collection do
      get 'category_initial'
      get 'category_children'
    end
  end
  resources :users, only: [:index] do
    collection do
      get 'info_notice'
      get 'info_todo'
      get 'purchase_progress'
      get 'purchase_complete'
      get 'exhibitor_sale'
      get 'exhibitor_progress'
      get 'exhibitor_complete'
      get 'logout'
    end
  end
  resources :categories, only: [:index, :show]
  resources :cards
end
