Rails.application.routes.draw do
  resources :profiles
  resources :order_histories
  devise_for :users
  get 'carts/show'
  resources :order_items
  resources :orders
  resource :cart
  resources :order_statuses
  resources :products
  get 'orderplaced/show'
  #get 'cart/history' => 'carts#history'
  root to: "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
