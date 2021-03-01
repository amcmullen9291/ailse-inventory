Rails.application.routes.draw do
  root to: 'users#welcome'
  resources :users do 
    get :confirm_email
  end
  resources :manufacturers
  resources :cards
  resources :occasions
  resources :aisles

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

