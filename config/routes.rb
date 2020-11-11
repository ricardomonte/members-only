Rails.application.routes.draw do
  devise_for :users
  root to: 'post#index'
  resources :posts, only: [:new, :create, :index]
end
