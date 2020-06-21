Rails.application.routes.draw do
  
  get '/food-drinks', to: 'food_drink#all', as: 'food_drink'
  get '/food-drinks/:slug', to: 'food_drink#show', as: 'food_drink_show'

  get '/weapons', to: 'weapon#all', as: 'weapons'
  get '/weapons/:slug', to: 'weapon#show', as: 'weapons_show'

  get '/ammo', to: 'ammo#all', as: 'ammo'
  get '/ammo/:slug', to: 'ammo#show', as: 'ammo_show'

  get '/medicine', to: 'medicine#all', as: 'medicine'
  get '/medicine/:slug', to: 'medicine#show', as: 'medicine_show'

  root to: 'home#map'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
