Rails.application.routes.draw do
  root 'event#index'
  resources :user
  resources :event
  resources :participation
end
