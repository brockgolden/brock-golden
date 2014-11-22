Rails.application.routes.draw do
  devise_for :users
  resources :posts

  resources :pages

  root to: 'pages#show'

  get 'posts/:id/:title', to: 'posts#show'

  get 'contact', to: 'pages#contact', as: 'contact'

  get 'music', to: 'pages#music', as: 'music'

  get 'articles', to: 'pages#articles', as: 'articles'
end

