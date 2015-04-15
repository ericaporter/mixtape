Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :tracks
  resources :users
  root to: "statics#home"



end
