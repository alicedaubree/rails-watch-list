Rails.application.routes.draw do
  get 'movies/index'
  # get 'bookmarks/new'
  # get 'bookmarks/create'
  root "lists#index"
  resources :lists, only: [:index, :show, :new, :create, :destroy] do
    resources :bookmarks, only: [:new, :create, :destroy]
  end
  resources :movies, only: [:index]
  # Defines the root path route ("/")
  # root "articles#index"
end

# GET "lists/42/bookmarks/new"
# POST "lists/42/bookmarks"
