Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  mount PgHero::Engine, at: "pghero"
 
  resources :sessions, only: :create
  match '/login',  to: 'sessions#new', via: :get
  match '/logout', to: 'sessions#destroy', via: :delete
  
  resources :categories 

  resources :cards do
  	resources :links
  end

  #TODO approve inventions still doesnt work
  get 'approve', :controller => 'cards'

  root 'cards#index'


  get 'to_approve' => 'cards#to_approve'
  get 'jackpot' => 'cards#jackpot'
  get 'random' => 'cards#random'
  get '/history', to: 'cards#history', as: :cards_history
  
end
