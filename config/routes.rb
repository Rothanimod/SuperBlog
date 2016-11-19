Rails.application.routes.draw do
  resources :comments, only: [:create]
  resources :posts
  devise_for :users
  root 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
