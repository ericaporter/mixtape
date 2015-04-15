Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :tracks
  resources :users
  get "tags/:tag", to: "tracks#index", as: :tag
  root to: "statics#home"



end
