Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  get "/planets", to: "planets#index"
  get "/planets/:id", to: "planets#show"
  get "/planets/new", to: "planets#new"
  post "planets", to: "planets#create"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
