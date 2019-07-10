Rails.application.routes.draw do
  # get 'restaurants', to: 'restaurants#index'

  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant

  # get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  # patch 'restaurants/:id', to: 'restaurants#update', as: :restaurant

  # get 'restaurants/:id', to: 'restaurants#show'
  # delete 'restaurants/:id', to: 'restaurants#delete'
  # get 'restaurants/top', as: :top_restaurants
  # get 'restaurants/:id/chef', to: 'restaurants#chef', as: :restaurant_chef

  # 'restaurants/42/reviews/new
  # 'reviews/new' -> unested

  resources :restaurants do
    collection do
      get :top
    end

    member do
      get :chef
    end

    resources :reviews, only: [:new, :create]
  end
end






