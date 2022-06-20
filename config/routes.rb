Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  # GET /about
  get "about", to: "about#index"
  # this will look for about_controller file inside of /app/controllers folder 

  # GET /
  root to: "main#index"
end
