Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  mount PgHero::Engine, at: "pghero"
  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
    
    resources :categories 

    resources :cards do
    
       match '/follow',  to: 'cards#follow', via: :post

      resources :links    
    end
    # handles /valid-locale
    root to: 'cards#index', as: "locale_root"
    # handles /valid-locale/fake-path
    match '*path', to: redirect{|params| "/#{I18n.default_locale}/#{params[:path]}"}, via: :all
  end

 # handles /
  root to: redirect("/#{I18n.default_locale}")
  # handles /bad-locale|anything/valid-path
  get '/*locale/*path', to: redirect("/#{I18n.default_locale}/%{path}")
  # handles /anything|valid-path-but-no-locale
  match '*path', to: redirect{|params| "/#{I18n.default_locale}/#{params[:path]}"}, via: :all

  resources :sessions, only: :create
  match '/login',  to: 'sessions#new', via: :get
  match '/logout', to: 'sessions#destroy', via: :delete
  
  

  #TODO approve inventions still doesnt work
  #get 'approve', :controller => 'cards'
  


  get 'to_approve' => 'cards#to_approve'
  get 'jackpot' => 'cards#jackpot'
  get 'random' => 'cards#random'
  get '/history', to: 'cards#history', as: :cards_history
  
end
