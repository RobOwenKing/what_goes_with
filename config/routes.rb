Rails.application.routes.draw do
  get 'pairs/show'
  get 'pairs/create'
  devise_for :users
  root to: 'pages#home'

  resources :ingredients, only: [ :index, :new, :create ]
  get 'ingredients/:name', to: 'ingredients#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
