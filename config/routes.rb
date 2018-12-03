Rails.application.routes.draw do
  root "pages#home"
  get "users/new"
  get "/help", to: "pages#help", as: "helf"
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  
  resources :users
end
