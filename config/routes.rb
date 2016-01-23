Rails.application.routes.draw do

  root 'owners#index'

  resources :owners do
    resources :spaces
  end
  resources :front_desk

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
