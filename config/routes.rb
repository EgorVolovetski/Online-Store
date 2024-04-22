Rails.application.routes.draw do
  get 'home/index'
  root :to => "home#index"
  get "up" => "rails/health#show", as: :rails_health_check

end
