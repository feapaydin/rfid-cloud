Rails.application.routes.draw do
  root 'cards#index'
  resources :cards
  devise_for :users
end
