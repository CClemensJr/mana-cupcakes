Rails.application.routes.draw do
  get 'pages/contact'
  get 'pages/about'
  get 'pages/menu'
  
  root 'pages#home'
end
