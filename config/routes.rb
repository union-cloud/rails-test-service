Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "status#index"

  resources :statuses, only: %w[index], controller: 'status'
end
