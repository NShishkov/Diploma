Rails.application.routes.draw do
  get 'uploads/new'

  get 'pages/home'
  get 'pages/choose_role', as: 'choose_role'
  get 'pages/help' 

  get 'pages/about'
  get 'profile', to: 'clients#show'
  
  resources :uploads
  resources :reviews
  resources :services
  resources :categories
  resources :offers
  resources :tasks do
    member do
      get :sel_cont
      post :select_cont
    end
  end
  resources :roles
  resources :contractors
  resources :clients
  resources :models
  resources :brands
  root :to => 'pages#home', as: 'home'
  resources :user_sessions
  resources :users do
    member do
      get :activate
    end
  end

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
