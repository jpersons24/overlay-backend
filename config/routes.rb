Rails.application.routes.draw do
  resources :team_games
  resources :teams
  resources :leagues
  resources :sites
  resources :posts
  resources :games
  resources :blogs
  resources :favorites_lists
  resources :stories
  resources :users
  get "/me", to: "users#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
