Rails.application.routes.draw do
  resources :users
  resources :orders
  resources :products
  resources :departments
  resources :shifts

  root :to => "pages#home"

  get '/sessions/new' => 'sessions#new', :as => 'new_session'
  post '/sessions/create' => 'sessions#create', :as => 'create_session'
  # get '/sessions/destroy' => 'sessions#destroy', :as => 'sessions_destroy'

  get '/product_orders/new/:order_id' => 'product_orders#new', :as => 'new_product_order'
  post '/product_orders/create/:order_id' => 'product_orders#create', :as => 'create_product_order'
  get '/product_orders/edit/:order_id' => 'product_orders#edit', :as => 'edit_product_order'
  post '/product_orders/update/:order_id' => 'product_orders#update', :as => 'update_product_order'

end
