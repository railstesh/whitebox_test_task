Rails.application.routes.draw do

  root 'users#home'

  devise_for :users

  resources :users do
    resources :projects
  end

  resources :projects do
    resources :tickets
  end
  

 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "users#new"

end
