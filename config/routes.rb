Rails.application.routes.draw do
  mount PgHero::Engine, at: "pghero"
 
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
