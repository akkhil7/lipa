Rails.application.routes.draw do
  resources :users, only: [:index, :create, :show, :destroy]
  resources :imageposts, only: [:index]
  devise_for :users
  post 'tokens/verify', to:'tokens#verify'
end

