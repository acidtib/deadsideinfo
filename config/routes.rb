Rails.application.routes.draw do
  
  get '/weapons', to: 'weapon#all', as: 'weapons'
  get '/weapons/:slug', to: 'weapon#show', as: 'weapons_show'

  get '/ammo', to: 'ammo#all', as: 'ammo'
  get '/ammo/:slug', to: 'ammo#show', as: 'ammo_show'

  root to: 'home#map'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
