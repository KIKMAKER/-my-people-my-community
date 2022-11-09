Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :projects, except: :destroy do
    resources :project_members, only: %i[create update]
    resources :posts, only: :create
  end

  resources :pages, only: %i[show]
  resources :conversations, only: %i[create show] do
    resources :messages, only: :create
  end

  resources :users, only: %i[index show]
end
