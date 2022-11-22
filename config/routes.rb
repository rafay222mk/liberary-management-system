Rails.application.routes.draw do
  get 'studenta/index'
  get 'studenta/show'
  
  get 'welcome/home'

  devise_for :users

  resources :books
  resources :users
  resources :borrow_histories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "welcome#home"
end