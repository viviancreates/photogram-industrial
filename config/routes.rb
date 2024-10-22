Rails.application.routes.draw do
  root "photos#index"
   devise_for :users

  resources :comments
  resources :follow_requests
  resources :likes
  resources :photos

  get "/:username" => "users#show", as: :user

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
