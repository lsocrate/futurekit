Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  # mount PgHero::Engine, at: "pghero"
  mount API::Base => '/api'
  resources :categories 
  resources :follows
  resources :users #needed by omniauth-identity
  resources :password_resets, except: :destroy
  resources :cards do
    resources :links
  end

  #sessions always be so crazy
  resources :sessions, only: :create
  
    match '/login',  to: 'sessions#new', via: :get
    match '/logout', to: 'sessions#destroy', via: :delete
  match "/auth/failure" => "sessions#new", via: :get
  match "/auth/identity/register" => "users#new", via: :post
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match '/signup', to: 'users#new', via: :get

  #TODO approve inventions still doesnt work
  get 'approve', :controller => 'cards'
  root 'cards#index'  

  get 'print' => 'cards#print'
  get 'to_approve' => 'cards#to_approve'
  get 'jackpot' => 'cards#jackpot'
  get 'random' => 'cards#random'
  get '/history', to: 'cards#history', as: :cards_history
  
end