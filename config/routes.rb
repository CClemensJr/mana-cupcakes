Rails.application.routes.draw do
  resources :products
  resources :order_items

  get 'pages/contact'
  get 'pages/about'
  get 'pages/menu'
  get 'products/index' => 'products#index'

  root 'pages#home'
end
