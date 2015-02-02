Rails.application.routes.draw do
 
  devise_for :users

  resources :posts do
    resources :reviews, except: [:show, :index]
  end

  root 'posts#index'
end
