Rails.application.routes.draw do
  resources :categories

  resources :cards
  root 'cards#index'
  get 'approve' => 'cards#approve'
  get 'to_approve' => 'cards#to_approve'

  get '/history', to: 'cards#history', as: :cards_history

  
end
