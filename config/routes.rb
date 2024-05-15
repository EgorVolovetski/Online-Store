Rails.application.routes.draw do
  devise_for :customers
  resources :carts
  resources :customers
  resources :products
  resources :suppliers
  resources :categories
  get 'home/index'
  get 'product/index'
  get 'customer/index'
  root :to => "home#index"
  get "up" => "rails/health#show", as: :rails_health_check

end
