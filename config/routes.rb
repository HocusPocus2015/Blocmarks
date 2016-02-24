Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :index]
  resources :topics
  resources :bookmarks

  root to: "welcome#index"

  get "welcome/index"


end
