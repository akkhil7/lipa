Rails.application.routes.draw do
  resources :users, only: [:index, :create, :show, :destroy]
  devise_for :users
end
