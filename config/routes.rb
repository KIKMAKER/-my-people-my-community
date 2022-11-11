Rails.application.routes.draw do
  get 'project_members/show'
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :projects, except: :destroy do
    resources :project_members, only: :create
    resources :posts, only: :create
  end

  resources :pages, only: %i[show]
  resources :conversations, only: :show do
    resources :messages, only: :create
  end

  resources :project_members, only: :update
  resources :users, only: %i[index show edit update] do
    resources :conversations, only: :create
  end

  get "dashboard", to: "pages#dashboard"
end
