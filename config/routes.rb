# frozen_string_literal: true

Rails.application.routes.draw do
  resources :orders
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

  get 'home', controller: 'landing', action: 'home'
  get 'about', controller: 'landing', action: 'about'
  get 'contact', controller: 'landing', action: 'contact'
  get 'faq', controller: 'landing', action: 'faq'
  get 'storage', controller: 'landing', action: 'storage'
  get 'supply', controller: 'landing', action: 'supply'
  get 'manufacture', controller: 'landing', action: 'manufacture'

  get 'command_center', controller: 'command_center', action: 'command_center'
  get 'cc', controller: 'command_center', action: 'command_center'
  get 'operations_center', controller: 'command_center', action: 'command_center'
  get ':company/cc', controller: 'command_center', action: 'command_center'
  get 'ignore_suggester/:suggester', controller: 'command_center', action: 'ignore_suggester', as: 'ignore_suggester'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'landing#home'
end
