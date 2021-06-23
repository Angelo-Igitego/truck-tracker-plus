Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  resources :containers, :trip_updates, :trip_containers, :customers, :trips, :trucks, :shipments, :ports, :shipping_lines

  devise_for :users

  root 'containers#landing', as: :root

  get '/tracking',to: "containers#tracking"
  
end
