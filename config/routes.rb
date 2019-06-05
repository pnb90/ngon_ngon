Rails.application.routes.draw do
  namespace :api do
    get "/users" => "users#index"
    get "/users/:id" => "users#show"
    get "/users/new" => "users#new"
    post "/users" => "users#create"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    post "/sessions" => "sessions#create"

    get "/restaurants" => "restaurants#index"
    get "/restaurants/data" => "restaurants#data"
    get "/restaurants/search" => "restaurants#search"
    get "/restaurants/:id" => "restaurants#show"
    get "/restaurants/new" => "restaurants#new"
    post "/restaurants" => "restaurants#create"
    patch "/restaurants/:id" => "restaurants#update"
    delete "/restaurants/:id" => "restaurants#destroy"

    get "/dishes" => "dishes#index"
    get "/dishes/:id" => "dishes#show"
    get "/dishes/new" => "dishes#new"
    post "/dishes" => "dishes#create"
    patch "/dishes/:id" => "dishes#update"
    delete "/dishes/:id" => "dishes#destroy"

    get "/restaurant_dishes" => "restaurant_dishes#index"
    get "/restaurant_dishes/:id" => "restaurant_dishes#show"
    get "/restaurant_dishes/new" => "restaurant_dishes#new"
    post "/restaurant_dishes" => "restaurant_dishes#create"
    patch "/restaurant_dishes/:id" => "restaurant_dishes#update"
    delete "/restaurant_dishes/:id" => "restaurant_dishes#destroy"

    get "/reviews" => "reviews#index"
    get "/reviews/:id" => "reviews#show"
    get "/reviews/new" => "reviews#new"
    post "/reviews" => "reviews#create"
    patch "/reviews/:id" => "reviews#update"
    delete "/reviews/:id" => "reviews#destroy"
  end
end
