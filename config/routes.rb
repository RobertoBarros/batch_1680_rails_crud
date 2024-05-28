Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  get "restaurants/new", to: 'restaurants#new', as: 'new_restaurant' # Show create FORM
  post "restaurants", to: 'restaurants#create' # Create a new restaurant


  get "restaurants", to: 'restaurants#index' # Show all restaurants
  get "restaurants/:id", to: 'restaurants#show', as: 'restaurant' # Show one restaurant

  get 'restaurants/:id/edit', to: 'restaurants#edit', as: 'edit_restaurant' # Show edit FORM
  patch 'restaurants/:id', to: 'restaurants#update'

  delete 'restaurants/:id', to: 'restaurants#destroy', as: 'destroy_restaurant' # Remove one restaurant





  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
