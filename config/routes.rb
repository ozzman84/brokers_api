Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :brokers, only: :index
    resources :preferred_brokers, only: :index
  end
end
