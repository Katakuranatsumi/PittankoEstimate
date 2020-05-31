Rails.application.routes.draw do
  require 'sidekiq/web'

  root to: 'estimation_of_tasks#index'
  resources :estimation_of_tasks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount Sidekiq::Web => '/sidekiq'
end
