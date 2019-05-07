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
  end
end
