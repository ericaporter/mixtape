Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :tracks
  resources :users
  root to: "statics#home"
  get "tags/:tag", to: "tracks#index", as: :tag
  get "/my_tracks", to: "tracks#index", my_tracks: true
end
