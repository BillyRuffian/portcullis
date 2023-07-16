Rails.application.routes.draw do

  namespace :commons do
    resources :divisions, only: [:index]
  end

  resources :members, only: :show do 
    resource :biography, only: :show
  end

  resources :parties, only: [:index]

  # get 'parties/index'
  # get 'parties/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end