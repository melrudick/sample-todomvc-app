Rails.application.routes.draw do

  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  resources :users
  resources :lists do
    resources :items
  end


  root 'lists#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
