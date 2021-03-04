Rails.application.routes.draw do
  root to: 'users#welcome'
  resources :cards 
  resources :occasions, except: [:show]
  resources :aisles
  resources :occasions

  resources :manufactureres
  resources :users do
    member {get :notes}
  end

  get '/login', to: 'users#new'
  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout
  get '/auth/github'

  get '/search', to: 'cards#index'
  # match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
