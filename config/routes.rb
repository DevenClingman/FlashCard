Rails.application.routes.draw do
  
  devise_for :users
  
  resources :categories do
    resources :decks do
      resources :cards do

      end
    end
  end

  root to: 'categories#index'

end
