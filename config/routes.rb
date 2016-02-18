Rails.application.routes.draw do
  devise_for :users

  # resources :users, only: [:update, :show, :index]
  get "welcome/index"
  get "users/index"
  get "users/show"


end
