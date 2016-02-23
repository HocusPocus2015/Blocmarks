Rails.application.routes.draw do
  resources :bookmarks
  resources :topics

  root to: "welcome#index"

  devise_for :users

  resources :users, only: [:show, :index]
  get "welcome/index"



end
