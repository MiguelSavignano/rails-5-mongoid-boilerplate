Rails.application.routes.draw do
  root "site#react_demo"

  get 'events' => "events#index"
  get 'site/react_demo', to: 'site#react_demo'
  resources :products
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
end
