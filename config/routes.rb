Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to: 'pages#about'
  # get 'posts/new', to: 'posts#new'

  resources :articles
  resources :posts

  # get 'login', to: 'sessions#new'
  # get 'login', to: 'sessions#create'
  # get 'logout', to: 'sessions#destroy'
end
