Rails.application.routes.draw do
  resources :owners do
    resources :spaces
  end

  resources :front_desk
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
