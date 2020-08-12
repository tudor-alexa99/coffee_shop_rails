Rails.application.routes.draw do
  root "home_page#index"
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/cart', to: 'carts#show'
  resources :users
  resources :home_page
  resources :dishes
  # resources :carts, only: [:show] do
  #   post 'add' # todo: check if this works for the add to cart button
  # end
end
