Rails.application.routes.draw do

  namespace :commons do
    resources :divisions, only: :index
  end

  resources :members, only: :show do 

    # these resources are the turbo drive resources
    resource :biography, only: :show
    resource :contact, only: :show
    resource :focus, only: :show
    resource :member_interest, as: :interest, only: :show
    resources :commons_votes, as: :votes, only: :index
    resources :written_questions, as: :questions, only: :index
    resources :oral_contributions, as: :contributions, only: :index 

    # these resources link to actions in the members controller
    member do
      get 'interests'
      get 'votes'
      get 'questions'
      get 'contributions'
    end

    collection do 
      get 'search'
    end
  end

  resources :written_questions, as: :questions, only: :show
  resources :oral_contributions, as: :contributions, only: :show
  resources :parties, only: :index
  resources :constituencies, only: :show do
    member { get 'geometry' }
  end

  # get 'parties/index'
  # get 'parties/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
