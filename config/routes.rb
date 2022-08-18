Rails.application.routes.draw do
  # get 'bookmarks/new'
  # get 'bookmarks/create'
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create, :destroy]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end

# GET "lists/42/bookmarks/new"
# POST "lists/42/bookmarks"
