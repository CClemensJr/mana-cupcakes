Rails.application.routes.draw do
  resources :products
  resources :order_items
  resources :charges, only: [:new, :create]
  resource :carts, only: [:show]

  get 'pages/contact'
  get 'pages/about'
  get 'pages/menu'
  get 'thanks', to: 'charges#thanks', as: 'thanks'

  root 'pages#home'
end
