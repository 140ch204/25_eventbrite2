Rails.application.routes.draw do
  get 'static_pages/index'
  get 'static_pages/secret'
  devise_for :users
  root 'events#index'
  resources :users
  resources :events
  resources :participations
end
