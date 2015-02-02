Rails.application.routes.draw do
 
  devise_for :users
  resources :reviews

  resources :posts

  root 'posts#index'


end
