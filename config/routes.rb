Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :tracks
  resources :users
  get "tags/:tag", to: "tracks#index", as: :tag
  root to: "statics#home"


  # added by terrifying gerry
  get "/my_tracks", to: "tracks#index", my_tracks: true
end
