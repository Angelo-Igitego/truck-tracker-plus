Rails.application.routes.draw do
  
  resources :trip_updates
  resources :trip_containers
  resources :customers
  resources :trips
  resources :trucks
  get '/track/:number', to: "shipments#track", as: :track_shipment

  root 'shipments#track', as: :root


  resources :shipments

  resources :ports
  resources :shipping_lines
  devise_for :users

end
