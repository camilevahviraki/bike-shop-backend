Rails.application.routes.draw do
  get 'motorcycles/index'
  get 'categories/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # devise_for :users
  namespace :api do
    namespace :v1 do
      resources :categories
      resources :motorcycles
    end
  end
end
