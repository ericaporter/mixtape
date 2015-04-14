Rails.application.routes.draw do
  devise_for :users
  resources :tracks
  resources :users
  root to: "users#index"
end
