Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  get "about-us", to: "about#index", as: :about
  # this will look for about_controller file inside of /app/controllers folder 

  root to: "main#index"
end
