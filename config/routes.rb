Rails.application.routes.draw do
  get 'words/index'
  get 'words/show'
  get 'words/new'
  get 'words/edit'
  root to: "welcome#welcome"
  get    '/login',   to: "sessions#new"
  post   '/login',   to: "sessions#create"
  delete '/logout',  to: "sessions#destroy"

  resources :users, only: %i[ new create ]
  resources :words
  resources :word_books do
    resources :words, controller: 'word_books/words', only: %i[ index create destroy ]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
