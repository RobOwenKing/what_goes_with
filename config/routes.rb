Rails.application.routes.draw do
  get 'foods/index'
  get 'foods/show'
  get 'foods/new'
  get 'foods/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
