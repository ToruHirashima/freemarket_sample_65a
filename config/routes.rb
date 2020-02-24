Rails.application.routes.draw do
  root to: 'items#index'
  resources :items, except: [:index]
end
