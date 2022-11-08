Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :projects, except: :destroy
  resources :pages, only: %i[show edit]
  resources :posts, only: :create
  resources :project_members, only: %i[create update]
  resources :conversations, only:

  # Defines the root path route ("/")
  # root "articles#index"
end
