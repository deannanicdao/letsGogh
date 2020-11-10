Rails.application.routes.draw do
  resources :items
  devise_for :users
  root 'pages#home'
  get '/admin', to: 'admin#users_listings', as: 'admin_users_listings'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
