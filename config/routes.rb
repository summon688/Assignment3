Rails.application.routes.draw do
  resources :fs
  resources :lineitems
  resources :carts
  resources :shoppers
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
