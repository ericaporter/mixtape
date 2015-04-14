Rails.application.routes.draw do
  devise_for :users
  resources :tracks
  resources :users
  root to: "statics#home"



end
