Rails.application.routes.draw do
  get 'static_pages/index'
  get 'static_pages/secret'
  devise_for :users
  root 'event#index'
  resources :user
  resources :event
  resources :participation
end
