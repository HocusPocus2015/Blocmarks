Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :index]

  resources :topics do
    resources :bookmarks
  end

  resources :bookmarks do
    resources :likes, only: [:create, :destroy]
  end

  resources :incoming, only: [:create]
  
  root to: "welcome#index"

  get "welcome/index"

end
