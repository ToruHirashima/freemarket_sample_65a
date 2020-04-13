Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  resources :items, except: [:index] do
    resources :orders  # only: [:new] としても良さそうですが一旦全アクションを実装
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
end
