Rails.application.routes.draw do
  root "products#index"
  get 'site/react_demo', to: 'site#react_demo'
  resources :products
  devise_for :users
end
