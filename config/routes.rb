Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # get '/tracking', to: "containers#tracking", as: :tracking 
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
  root 'containers#landing', as: :root

  get '/tracking', to: "containers#landing"
  get '/tracking/:number',to: "containers#tracking"

end
