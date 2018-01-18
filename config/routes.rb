Rails.application.routes.draw do
  
  devise_for :users
  resources :cards
  resources :decks
  resources :categories

  root to: 'categories#index'

end
