Rails.application.routes.draw do
  devise_for :users
  root 'event#index'
  resources :user
  resources :event
  resources :participation
end
