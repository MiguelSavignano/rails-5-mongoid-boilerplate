Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  root "products#index"
  resources :products
  devise_for :users
end
