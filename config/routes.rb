Rails.application.routes.draw do
  root 'cards#index'
  resources :cards
  devise_for :users

  get 'authenticate', to: 'cards#authenticate'
end
