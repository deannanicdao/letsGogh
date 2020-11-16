Rails.application.routes.draw do
  # get 'user/items'
  resources :items
  devise_for :users
  root 'pages#home'
  get '/admin', to: 'admin#users_listings', as: 'admin_users_listings'
  delete '/admin', to: 'admin#destroy', as: 'admin_delete'
  get '/user/items', to: 'user#items', as: 'user_items'

  post '/order/:id/buy', to: 'order#buy', as: 'buy'
  get '/order/:id/success', to: 'order#success', as: 'success'
  get '/order/:id/cancel', to: 'order#cancel', as: 'cancel'
  # get '/order/purchases', to: 'order#purchases', as: 'purchases'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
