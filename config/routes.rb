Rails.application.routes.draw do
  resources :cards
  root 'cards#index'
  get 'approve' => 'cards#approve'
  get 'to_approve' => 'cards#to_approve'
  
end
