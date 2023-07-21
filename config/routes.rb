Rails.application.routes.draw do
  resources :occupied_storages
  resources :transactions
  resources :transit_stops
  resources :transits
  resources :transit_routes
  resources :routes
  resources :messagings
  resources :clients
  resources :staff_types
  resources :products
  resources :storages
  resources :vehicles
  resources :company_staffs
  resources :staffs
  resources :employees
  resources :company_branches
  resources :companies
  resources :owners

  devise_for :mtus, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  get 'landing/home'
  get 'landing/about'
  get 'landing/contact'
  get 'landing/faq'
  get 'landing/storage'
  get 'landing/supply'
  get 'landing/manufacture'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "landing#home"
end
