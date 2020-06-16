Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :ingredients, only: [ :index, :new, :create ]
  get 'ingredients/:name', to: 'ingredients#show'

  resources :pairs, only: [ :show, :create ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
