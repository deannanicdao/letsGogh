Rails.application.routes.draw do
  resources :items
  devise_for :users
  root 'pages#home'
  get 'admin/users', to: 'admin#users', as: 'admin_users'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
