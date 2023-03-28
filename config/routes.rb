Rails.application.routes.draw do
  resources :powers, only: [:show, :index,:update]
  resources :hero_powers, only: [:create]
  get '/heroes', to: "heros#index"
  get '/heroes/:id', to: "heros#show"
  get '/hero_powers', to: 'hero_powers#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
