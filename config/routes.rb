Rails.application.routes.draw do
  # home page
  root "home_page#index"

  # sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # carts
  get '/cart', to: 'carts#show'

  # cart items
  post '/cart_items', to: 'cart_items#create'

  # users
  get '/signup', to: 'users#new'

  # admin
  # get '/admin', to: 'admin#index'

  # orders
  get '/orders', to: 'orders#index'
  post 'orders/new', to: 'orders#create'

  # order items
  post '/order_items', to: 'order_items#create'

  # resources
  resources :users, only: %i[show new create edit update]
  resources :home_page
  resources :dishes
  resources :cart_items
  resources :orders, only: %i[show new create]
  resources :order_items

  namespace :admin do
    resources :users, only: %i[index destroy]
    resources :orders, only: %i[edit patch index]
    get '/', to: 'base#index'
  end
end
