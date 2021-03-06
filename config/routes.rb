Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  delete 'logout',to: 'sessions#destroy'
  get 'users/new'
  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contactus', to: 'static_pages#contactus'
  get '/signup', to:'users#new'
  post '/signup',to: 'users#create'
  resources :users do
    member do
      get :followers, :following
    end
  end
  resources :account_activations, only:[:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]



  resources :relationships,       only: [:create, :destroy]

end