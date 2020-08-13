Rails.application.routes.draw do
  root "home_page#index"
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/cart', to: 'carts#show'
  post '/cart_items', to: 'cart_items#create'
  resources :users
  resources :home_page
  resources :dishes
  resources :cart_items
end
