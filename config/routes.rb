Rails.application.routes.draw do
  resources :rooms
  resources :customers

  root to: 'rooms#index'

end
