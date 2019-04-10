Rails.application.routes.draw do
  devise_for :users
  root 'welcome#homepage'
  
  get '/users/:id/matches', to: 'home#matches'
  
  show '/users/:id/matches', to: 'home#show'
  
  
  
  
end
