Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  get 'profile/:id', to: 'profiles#show', as: 'profile'
  get 'profile/:id/edit', to: 'profiles#edit', as: 'edit_profile'
  patch 'profile/:id', to: 'profiles#update'

  resources :users, only: %i[new create]
  resources :profile, only: %i[show edit update]
  # Defines the root path route ("/")
  root "tops#index"
end
