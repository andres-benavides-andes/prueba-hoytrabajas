Rails.application.routes.draw do
  resources :bancos
  devise_for :users
  root to: "home#index" 
end
