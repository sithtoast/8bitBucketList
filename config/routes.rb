Eightbitbacklog::Application.routes.draw do

  get 'home/index'
  get 'search', to: 'pages#search'

  devise_for :users
  get "pages/index"

  root 'pages#index'
  
  resource :games
  
  get 'gamelist', to: 'users#gamelist'
  delete 'gamelist', to: 'gamelists#destroy'
end
