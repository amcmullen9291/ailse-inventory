Rails.application.routes.draw do
  root to: 'users#welcome'
  resources :users
  resources :manufacturers
  resources :cards
  resources :occasions
  resources :aisles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

