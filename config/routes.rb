Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  root to: "main#index"

  get "about-us", to: "about#index", as: :about
  # this will look for about_controller file inside of /app/controllers folder 

  get "sign-up", to: "registrations#new"
  post "sign-up", to: "registrations#create"

  get "sign-in", to: "sessions#new"
  post "sign-in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

end
