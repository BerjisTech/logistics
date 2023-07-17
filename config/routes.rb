Rails.application.routes.draw do
  devise_for :mtus
  get 'landing/home'
  get 'landing/about'
  get 'landing/contact'
  get 'landing/faq'
  get 'landing/storage'
  get 'landing/supply'
  get 'landing/manufacture'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
