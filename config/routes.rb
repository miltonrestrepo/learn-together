Rails.application.routes.draw do
  resources :posts
  root 'home#index'
  # devise_for :users, :controllers => {:registrations => "my_devise/registrations"}
  devise_for :users, controllers: { sessions: 'devise/sessions' }
  
  resources :messages, only: [:index, :new, :create, :destroy, :show] do
    resources :contents, only: [:index, :new, :create]
  end
  
  get '/users/:id/matches', to: 'home#show', as: :match
  
  show '/users/:id/matches', to: 'home#show'
  
  resources :languages do
    delete 'remove'
  end
end
