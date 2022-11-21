Rails.application.routes.draw do

  devise_for :users

  root to: "pages#home"
  get "/planets", to: "planet#index"
  get "/planets/:id", to: "planet#show"
  get "/planets/new", to: "planet#new"
  post "planets", to: "planet#create"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
