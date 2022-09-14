Rails.application.routes.draw do
  
  resources :cart_products
  resources :carts
  resources :orders
  resources :clients
  resources :products
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get '/profile', to: "clients#show"
  post "/login", to: "sessions#create"
  get '/signup', to: "clients#create"
  delete "/logout", to: "sessions#destroy"
  get '/carts/:id/display_sum', to: 'carts#display_sum'
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
