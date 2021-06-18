Rails.application.routes.draw do
  
  get '/track/:number', to: "shipments#track", as: :track_shipment

  root to: 'shipments#track' #, as: :root


  resources :shipments

  resources :ports
  resources :shipping_lines
  resources :vessels
  devise_for :users

end
