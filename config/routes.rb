Rails.application.routes.draw do
  resources :posts

  resources :pages

  root to: 'pages#show'
end
