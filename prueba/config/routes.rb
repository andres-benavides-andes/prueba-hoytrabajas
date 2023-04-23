Rails.application.routes.draw do
  resources :proveedors
  resources :bancos
  devise_for :users
  root to: "bancos#index" 
end
