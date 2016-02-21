Rails.application.routes.draw do
  get 'bookmarks/index'

  get 'bookmarks/show'

  get 'bookmarks/new'

  get 'bookmarks/edit'

  get 'topics/index'

  get 'topics/show'

  get 'topics/new'

  get 'topics/edit'

  devise_for :users

  # resources :users, only: [:update, :show, :index]
  get "welcome/index"
  get "users/index"
  get "users/show"


end
