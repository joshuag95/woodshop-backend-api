Rails.application.routes.draw do
  
  resources :cart_products
  resources :carts
  resources :orders
  resources :clients
  resources :products
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  
  
  get '/carts/:id/display_sum', to: 'carts#display_sum'
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
