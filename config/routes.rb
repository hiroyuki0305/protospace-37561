Rails.application.routes.draw do
  devise_for :users
  
  get 'prototypes/index'

  root to: "prototypes#index"

  get 'prototypes/new', to: 'prototypes#new'
  get 'prototypes/create', to: 'prototypes#create'

  get 'comments/create', to: 'comments#create'
  
  resources :prototypes, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  
  resources :prototypes do
    resources :comments, only: :create
  end

  resources :users, only: :show
  
end
