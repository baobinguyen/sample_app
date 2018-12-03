Rails.application.routes.draw do
  root "pages#home"
  get "users/new"
  get "/help", to: "pages#help", as: "helf"
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  
  resources :users
end
