Rails.application.routes.draw do
  resources :users
  resources :orders
  resources :products
  resources :departments
  resources :shifts

  root :to => "pages#home"

  get '/sessions/new' => 'sessions#new', :as => 'new_session'
  post '/sessions/create' => 'sessions#create', :as => 'create_session'
  get '/sessions/destroy' => 'sessions#destroy', :as => 'sessions_destroy'

  get '/user/orders/:id' => 'users#orders', :as => 'user_orders'
  get '/user/shifts/:id' => 'users#shifts', :as => 'user_shifts'
  post '/user/select_shift/:id/:shift_id' => 'users#select_shift', :as => 'user_shifts_add'
  post '/user/remove_shift/:id/:shift_id' => 'users#remove_shift', :as => 'user_shifts_remove'

  get '/product_orders/new/:order_id' => 'product_orders#new', :as => 'new_product_order'
  post '/product_orders/create/:order_id' => 'product_orders#create', :as => 'create_product_order'
  get '/product_orders/edit/:order_id' => 'product_orders#edit', :as => 'edit_product_order'
  post '/product_orders/update/:order_id' => 'product_orders#update', :as => 'update_product_order'

  post '/shifts/add_user/:shift_id' => 'shifts#add_user', :as => 'shift_users_add'
  post '/shifts/remove_user/:shift_id/:user_id' => 'shifts#remove_user', :as => 'shift_users_remove'
end
