Rails.application.routes.draw do
  # get 'user/items'
  resources :items
  devise_for :users
  root 'pages#home'
  get '/admin', to: 'admin#users_listings', as: 'admin_users_listings'
  get '/user/items', to: 'user#items', as: 'user_items'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
