Rails.application.routes.draw do
  post 'tokens/verify', to:'tokens#verify'
  post 'tokens/verify_token', to: 'tokens#verify_token'
  get 'imageposts/current', to: 'imageposts#current_images'
  resources :users, only: [:index, :create, :show, :destroy]
  resources :imageposts
  devise_for :users
end

