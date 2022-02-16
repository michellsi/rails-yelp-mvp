Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Show all restaurants / READ
  get 'restaurants', to: 'restaurants#index', as: :restaurants

  # Create a new restaurant / CREATE
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  post 'restaurants', to: 'restaurants#create'

  # Add a new review
  get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :new_restaurant_review
  post 'restaurants/:restaurant_id/reviews', to: 'reviews#create', as: :restaurant_reviews

  # Show ONE restaurant / READ
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
end
