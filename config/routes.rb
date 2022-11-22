Rails.application.routes.draw do

  devise_for :users

  root to: "pages#home"
  # get "/planets", to: "planets#index"
  # get "/planets/:id", to: "planets#show"
  # get "/planets/new", to: "planets#new"
  # post "planets", to: "planets#create"
  resources :planets, only: [:index, :show, :new, :create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
