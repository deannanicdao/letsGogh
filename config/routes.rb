Rails.application.routes.draw do
  # get 'user/items'
  resources :items
  devise_for :users
  root 'pages#home'
  get '/admin', to: 'admin#users_listings', as: 'admin_users_listings'
  delete '/admin', to: 'admin#destroy', as: 'admin_delete'
  get '/user/items', to: 'user#items', as: 'user_items'
  get '/user/orders', to: 'user#orders', as: 'user_orders'

  post '/order/:id/buy', to: 'order#buy', as: 'buy'
  get '/order/:id/success', to: 'order#success', as: 'success'
  get '/order/:id/cancel', to: 'order#cancel', as: 'cancel'
  get '/orders/show', to: 'order#show', as: 'order_show'
  get '/order', to: 'order#index', as: "orders"

  get '*path', to: 'pages#not_found', constraints: lambda { |req|
    req.path.exclude? 'rails/active_storage'
  }
end
