Rails.application.routes.draw do
  root :to => "pages#home"
  resources :users
  resources :orders
  resources :products
  resources :departments
  resources :shifts
end
