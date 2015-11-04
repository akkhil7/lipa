Rails.application.routes.draw do
  get 'users/me', to: 'users#me'
  resources :users, only: [:index, :create, :show, :destroy]
  resources :imageposts
  devise_for :users
  post 'tokens/verify', to:'tokens#verify'
end

