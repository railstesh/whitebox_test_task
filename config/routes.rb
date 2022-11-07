Rails.application.routes.draw do
  resources :tickets
  root 'users#home'

  devise_for :users

  resources :users do
    resources :projects
  end
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "users#new"

end
