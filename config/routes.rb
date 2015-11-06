Rails.application.routes.draw do
  get 'users/me', to: 'users#me'
  post 'tokens/verify', to:'tokens#verify'
  get 'imageposts/current', to: 'imageposts#current_images'
  resources :users, only: [:index, :create, :show, :destroy]
  resources :imageposts
  devise_for :users
end

