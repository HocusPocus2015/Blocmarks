Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :index]
  resources :topics
  
  resources :bookmarks, except: [:index] do
     resources :likes, only: [:index, :create, :destroy]
   end

  root to: "welcome#index"

  get "welcome/index"


end
