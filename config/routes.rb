Rails.application.routes.draw do
  
  root 'containers#tracking', as: :root
  get '/tracking', to: "containers#tracking", as: :tracking 
  get '/tracking/:number', to: "containers#tracking"
  resources :containers
  resources :trip_updates
  resources :trip_containers
  resources :customers
  resources :trips
  resources :trucks
  resources :shipments
  resources :ports
  resources :shipping_lines
  devise_for :users

end
