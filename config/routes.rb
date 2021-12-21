Rails.application.routes.draw do
  root 'chatroom#index'
  get 'signup', to: 'users#new'
  resources :users, only: [:create]
  resources :messages, only: [:create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
