Rails.application.routes.draw do
  
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  resources :categories do
    resources :decks do
      resources :cards do

      end
    end
  end

  root to: 'categories#index'

end
