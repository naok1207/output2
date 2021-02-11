Rails.application.routes.draw do
  root to: "welcome#welcome"
  get    '/login',   to: "sessions#new"
  post   '/login',   to: "sessions#create"
  delete '/logout',  to: "sessions#destroy"

  resources :users, only: %i[ new create ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
