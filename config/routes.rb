Rails.application.routes.draw do
  resources :products
  resources :order_items
  resource :carts, only: [:show]

  get 'pages/contact'
  get 'pages/about'
  get 'pages/menu'

  root 'pages#home'
end
