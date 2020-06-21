Rails.application.routes.draw do
  
  get '/weapons', to: 'weapon#all', as: 'weapons'
  get '/weapons/:slug', to: 'weapon#show', as: 'weapons_show'

  root to: 'home#map'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
